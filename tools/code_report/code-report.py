#!/usr/bin/env python3

import sys
import re
import os

import pandas as pd
import numpy as np

from PyQt5.QtCore import Qt, QRect, QSize, QAbstractTableModel
from PyQt5.QtWidgets import *
from PyQt5.QtGui import QColor, QPainter, QTextFormat, QTextCursor, QFont, QFontInfo

from editor import QCodeEditor, QLineInfoArea, QLineNumberArea

# Global helpers

# Returns the address of the instruction in the line '  deadbeef:'
# or None if this line does not contain an instruction address
def getInstructionAddress(line):
    re_address = '\s+([0-9a-fA-F]+):'
    match = re.search(re_address, line)

    if match != None:
        addr = int(match.group(1), 16)
        return addr

    return None

# Takes a csv with hex,int format and returns a dict
def hexCsvToMap(file):
    d = dict()
    try:
        with open(file, 'r') as f:
            for line in f:
                line = line.strip('\n')
                (key, val) = line.split(',')
                d[int(key, 16)] = int(val)

    except IOError:
        print("Failed to open file: " + file)
        sys.exit(1)

    return d


class ResultFiles:
    def __init__(self, results_directory):
        self.results_directory = results_directory

        self.findBaseName()

        self.basepath = self.results_directory + '/' + self.basename

        self.source_code_file = self.basepath + '.S'
        self.instruction_profilig_file = self.basepath + '.instructionprofiling.csv'
        self.total_cycle_count_file = self.basepath + '.cyclecount'
        self.wars_file = self.basepath + '.wars'
        self.checkpoint_marker_file = self.basepath + '.checkpointmarker.csv'
        self.callsite_count_file = self.basepath + '.callsitecount.csv'

    def findBaseName(self):
        re_basedir = '(.+)\.elf$'
        for f in os.listdir(self.results_directory):
            # All .elf files
            match = re.search(re_basedir, f)
            if match != None:
                # Ignores elf files with these keywords
                if 'uninstr' in f:
                    continue
                if 'gclang' in f:
                    continue

                # We got a match
                self.basename = match.group(1)+'.elf'
                return

        # Could not find a valid elf file
        print('Could not find a valid .elf file in: ' + self.results_directory)
        sys.exit(2)



class QInstructionCountArea(QLineInfoArea):
    def __init__(self, editor, instruction_count_map):
        super().__init__(editor)
        self.text_offset = -5
        self.bg_color = QColor('#f1be3e')

        self.instruction_count_map = instruction_count_map

        # Get the maximum value, assume it does not change
        self.width_const = max(self.instruction_count_map.values())

    def width(self):
        return 10 + self.charWidth('0') * self.numberToDigits(self.width_const)

    def paintLineCallback(self, block):
        text = block.text()

        addr = getInstructionAddress(text)

        if addr != None:
            if addr in self.instruction_count_map:
                return str(self.instruction_count_map[addr])
            else:
                return "0"

        return ""


class QCMarkerCountArea(QLineInfoArea):
    def __init__(self, editor, callsite_count_map):
        super().__init__(editor)
        self.text_offset = -5
        self.bg_color = QColor('#00A6D6')

        self.callsite_count_map = callsite_count_map

        # Get the maximum value, assume it does not change
        self.width_const = max(self.callsite_count_map.values())

    def width(self):
        return 10 + self.charWidth('0') * self.numberToDigits(self.width_const)

    def paintLineCallback(self, block):
        text = block.text()

        addr = getInstructionAddress(text)

        if addr != None:
            if addr in self.callsite_count_map:
                return str(self.callsite_count_map[addr])
            else:
                return ""

        return ""


class ControlWidget(QWidget):
    def __init__(self, codeWidget, resultFiles):
        QWidget.__init__(self)

        self.codeWidget = codeWidget
        self.resultFiles = resultFiles

        # Connect the infoTextBox to the codeWidget output
        self.codeWidget.codeEditor.writeInfoList.append(self.writeToInfoTextBox)

        # Table
        # Get checkpoint location data
        callsite_count_map = hexCsvToMap(self.resultFiles.callsite_count_file)
        labels = ['Code Address', 'Execution Count']

        # Create the table
        self.table = QTableWidget()

        # Add data to the table
        self.table.setRowCount(len(callsite_count_map))
        self.table.setColumnCount(len(labels))
        row = 0
        for addr in callsite_count_map:
            item_addr = QTableWidgetItem()
            item_execution_count = QTableWidgetItem()

            item_addr.setText(hex(addr))
            item_execution_count.setText(str(callsite_count_map[addr]))

            self.table.setItem(row, 0, item_addr)
            self.table.setItem(row, 1, item_execution_count)

            # Increment the row
            row += 1

        self.table.setSortingEnabled(True)
        self.table.itemSelectionChanged.connect(self.tableSelectionChanged)

        # Info box
        self.infoTextBox = QTextEdit()
        self.infoTextBox.setReadOnly(True)
        self.infoTextBox.font = QFont("Monospace");

        # Add a status label with the total number of WAR violations
        self.statusLine = QLabel('Status: ' + 'OK')

        # Add a legend with the colors of the QLineInfoArea widgets
        self.legendLayout = QHBoxLayout()
        self.legendCheckpointCount = QLabel('Checkpoint Count')
        self.legendExecutionCount = QLabel('Instruction Execution Count')
        self.legendCheckpointCount.setStyleSheet('background-color: #00A6D6')
        self.legendExecutionCount.setStyleSheet('background-color: #f1be3e')
        self.legendLayout.addWidget(self.legendCheckpointCount)
        self.legendLayout.addWidget(self.legendExecutionCount)

        # Add a button to show/unshow the address lines
        self.buttonLayout = QHBoxLayout()
        self.showAssemblyButton = QPushButton('show assembly')
        self.hideAssemblyButton = QPushButton('hide assembly')
        self.buttonLayout.addWidget(self.showAssemblyButton)
        self.buttonLayout.addWidget(self.hideAssemblyButton)

        self.showAssemblyButton.clicked.connect(self.showAssemblyButtonPressed)
        self.hideAssemblyButton.clicked.connect(self.hideAssemblyButtonPressed)

        # Layout
        self.splitter = QSplitter(Qt.Vertical)

        self.splitter.addWidget(self.table)
        self.splitter.addWidget(self.infoTextBox)
        self.splitter.setSizes([400, 200])

        vbox = QVBoxLayout()
        vbox.addLayout(self.legendLayout)
        #vbox.addWidget(self.statusLine)
        vbox.addWidget(self.splitter)
        vbox.addLayout(self.buttonLayout)

        self.setLayout(vbox)

    def moveInfoTextBoxCursorToEnd(self):
        textCursor = self.infoTextBox.textCursor()
        textCursor.movePosition(QTextCursor.End)
        self.infoTextBox.setTextCursor(textCursor)

    def writeToInfoTextBox(self, text, newline='\n'):
        self.moveInfoTextBoxCursorToEnd()
        self.infoTextBox.insertPlainText(text+newline)

    def writeHtmlToInfoTextBox(self, html, newline='<br>'):
        self.moveInfoTextBoxCursorToEnd()
        self.infoTextBox.insertHtml(html+newline)

    def setStatusText(self, text):
        self.statusLine.setText(text)

    def showAssemblyButtonPressed(self):
        self.writeToInfoTextBox('Showing assembly code')
        self.showAssemblyCode(True)

    def hideAssemblyButtonPressed(self):
        self.writeToInfoTextBox('Hiding assembly coden')
        self.showAssemblyCode(False)

    def showAssemblyCode(self, show):
        editor = self.codeWidget.codeEditor

        block = editor.document().firstBlock()
        while block.isValid():
            if show == False:
                if getInstructionAddress(block.text()) != None:
                    block.setVisible(False)
            else:
                block.setVisible(True)
            block = block.next()

        editor.setTextCursor(editor.textCursor())
        editor.repaint()
        editor.viewport().update()

    def tableSelectionChanged(self):
        if self.table == None:
            return
        item = self.table.selectedItems()[0]
        if item.column() == 0: # the address column
            data = item.data(Qt.DisplayRole)
            addr = int(data, 16)
            self.jumpToAddr(addr)

    def jumpToAddr(self, addr):
        editor = self.codeWidget.codeEditor

        block = editor.document().firstBlock()
        while block.isValid():
            line_addr = getInstructionAddress(block.text())
            if addr == line_addr:
                editor.jumpToBlock(block)
                return
            block = block.next()


class CodeWidget(QWidget):
    def __init__(self, resultFiles):
        QWidget.__init__(self)
        self.resultFiles = resultFiles

        # Initialize the CodeEditor
        self.codeEditor = QCodeEditor(resultFiles.source_code_file)

        # Collect information for the LineInfo areas
        instruction_count_map = self.getInstructionCountMap()
        callsite_count_map = self.getCallsiteCountMap()

        # Add callsite count (with checkpoint markers) line area
        self.codeEditor.addLineInfoArea(
                QCMarkerCountArea(self.codeEditor, callsite_count_map))

        # Add instruction count line area
        self.codeEditor.addLineInfoArea(
                QInstructionCountArea(self.codeEditor, instruction_count_map))

        # Add line numbers line area
        self.codeEditor.addLineInfoArea(QLineNumberArea(self.codeEditor)) # built in


        # Place the widget
        hbox = QHBoxLayout()
        hbox.addWidget(self.codeEditor)
        self.setLayout(hbox)

    def getInstructionCountMap(self):
        return hexCsvToMap(self.resultFiles.instruction_profilig_file)

    def getCallsiteCountMap(self):
        return hexCsvToMap(self.resultFiles.callsite_count_file)


class MainWidget(QWidget):
    def __init__(self, resultFiles):
        QWidget.__init__(self)
        self.resultFiles = resultFiles

        hbox = QHBoxLayout()

        self.splitter = QSplitter(Qt.Horizontal)
        self.codeWidget = CodeWidget(self.resultFiles)
        self.controlWidget = ControlWidget(self.codeWidget, self.resultFiles)

        self.controlWidget.writeHtmlToInfoTextBox('<b>Source file:</b> ' + self.resultFiles.source_code_file)

        # Write cycle information tot the text box
        cycle_count = self.getCycleCount()
        self.controlWidget.writeHtmlToInfoTextBox('<b>Clock cycles:</b> ' + str(cycle_count))

        war_count = self.getWarCount()
        self.controlWidget.writeHtmlToInfoTextBox('<b>WAR count:</b> ' + str(war_count))

        checkpoint_marker_text = self.getCheckpointMarkerText()
        checkpoint_marker_text = checkpoint_marker_text.replace(',', ', ').replace('__checkpoint_marker_','')
        self.controlWidget.writeHtmlToInfoTextBox('<b>Checkpoint markers:</b> (marker, count, %)')
        self.controlWidget.writeToInfoTextBox(checkpoint_marker_text, newline='')

        self.splitter.addWidget(self.codeWidget)
        self.splitter.addWidget(self.controlWidget)
        self.splitter.setSizes([600, 100])

        hbox.addWidget(self.splitter)

        self.setLayout(hbox)

    def getCycleCount(self):
        file = self.resultFiles.total_cycle_count_file
        try:
            with open(file, 'r') as f:
                cycle_count = int(f.readline())
                return cycle_count
        except IOError:
            print('Failed to open: ', file)
            return None

    def getWarCount(self):
        file = self.resultFiles.wars_file
        try:
            with open(file, 'r') as f:
                nonempty_lines = [line.strip("\n") for line in f if line != "\n"]
                return len(nonempty_lines)-1 # first line is description
        except IOError:
            print('Failed to open: ', file)
            return None

    def getCheckpointMarkerText(self):
        file = self.resultFiles.checkpoint_marker_file
        try:
            with open(file, 'r') as f:
                return f.read()
        except IOError:
            print('Failed to open: ', file)
            return None


class MainWindow(QMainWindow):
    def __init__(self, results_dir_arg=None):
        QMainWindow.__init__(self)

        exitAct = QAction('&Exit', self)
        exitAct.setStatusTip('Exit application')
        exitAct.triggered.connect(qApp.quit)

        openAct = QAction('&Open', self)
        openAct.setStatusTip('Open results directory')
        openAct.triggered.connect(self.openCall)

        menubar = self.menuBar()
        self.fileMenu = menubar.addMenu('&File')

        self.fileMenu.addAction(exitAct)

        # Select a results directory if none was provided on the command line
        if results_dir_arg == None:
            options = QFileDialog.Options()
            options |= QFileDialog.ShowDirsOnly | QFileDialog.DontResolveSymlinks
            results_dir = QFileDialog.getExistingDirectory(self, "Open results directory", options=options)
            if not results_dir:
                print('Exit')
                sys.exit(0)
        else:
            results_dir = results_dir_arg


        print('Reading from directory: ' + results_dir)
        resultFiles = ResultFiles(results_dir)
        print('Using elf file: ' + resultFiles.basename)

        self.mainWidget = MainWidget(resultFiles)
        self.setCentralWidget(self.mainWidget)

    def openCall(self):
        print('Open')
        self.openFileNameDialog()

    def openFileNameDialog(self):
        options = QFileDialog.Options()
        options |= QFileDialog.ShowDirsOnly | QFileDialog.DontResolveSymlinks
        results_dir = QFileDialog.getExistingDirectory(self,
                "Open results directory", options=options)
        if results_dir:
            print(results_dir)
            self.results_dir = results_dir
            resultFiles = ResultFiles(self.results_dir)
            self.warReportWidget.loadResults(resultFiles)


if __name__ == '__main__':
    import sys
    from PyQt5.QtWidgets import QApplication

    os.environ["QT_AUTO_SCREEN_SCALE_FACTOR"] = "1"

    app = QApplication(sys.argv)
    #app.setAttribute(Qt.AA_EnableHighDpiScaling)

    # TODO make the command line argument parsing better?
    results_dir_arg = None
    if len(sys.argv) > 1:
        # first arg is the out_dir
        dir_arg = sys.argv[1]
        if os.path.isdir(dir_arg):
            results_dir_arg = dir_arg

    mainWin = MainWindow(results_dir_arg)
    mainWin.show()
    sys.exit(app.exec_())

