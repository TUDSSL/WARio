from PyQt5.QtCore import Qt, QRect, QSize, QAbstractTableModel
from PyQt5.QtWidgets import *
from PyQt5.QtGui import QColor, QPainter, QTextFormat, QTextCursor, QFont, QFontInfo

import syntax

class QLineInfoArea(QWidget):
    def __init__(self, editor):
        super().__init__(editor)
        self.codeEditor = editor

        self.text_color = Qt.black
        self.bg_color = Qt.lightGray
        self.text_align = Qt.AlignRight
        self.text_offset = 0

    def width(self):
        raise NotImplementedError()
        return 0

    def paintLineCallback(self, line_number):
        raise NotImplementedError()
        return 'line_text'

    def setTextColor(self, color):
        self.text_color = color

    def setBgColor(self, color):
        self.bg_color = color

    def setTextAlign(self, align):
        self.text_align = align

    def setTextOffset(self, offset):
        self.text_offset = offset

    def charWidth(self, char='W'):
        return self.codeEditor.fontMetrics().horizontalAdvance(char)

    def charHeight(self):
        return self.codeEditor.fontMetrics().height()

    def paintEvent(self, event):
        # Init the painter
        painter = QPainter(self)
        painter.fillRect(event.rect(), self.bg_color)

        # Get the visible blocks
        block = self.codeEditor.firstVisibleBlock()
        block_number = block.blockNumber()
        top = self.codeEditor.blockBoundingGeometry(block).translated(
                self.codeEditor.contentOffset()).top()
        bottom = top + self.codeEditor.blockBoundingRect(block).height()


        # Go trough the visible blocks
        height = self.charHeight()
        width = self.width()
        while block.isValid() and (top <= event.rect().bottom()):
            if block.isVisible() and (bottom >= event.rect().top()):
                painter.setPen(self.text_color)
                painter.setFont(self.codeEditor.font)

                text = self.paintLineCallback(block)
                painter.drawText(0, round(top),
                        width + self.text_offset,
                        height,
                        self.text_align,
                        text)

            block = block.next()
            top = bottom
            bottom = top + self.codeEditor.blockBoundingRect(block).height()
            block_number += 1

    # Helpers
    def numberToDigits(self, number):
        digits = 1
        while number >= 10:
            number /= 10
            digits += 1
        return digits

class QLineNumberArea(QLineInfoArea):
    def __init__(self, editor):
        super().__init__(editor)
        self.text_offset = -5

    def width(self):
        max_value = max(1, self.codeEditor.blockCount())
        digits = self.numberToDigits(max_value)
        width = 10 + self.charWidth('0') * digits
        return width

    def paintLineCallback(self, block):
        return str(block.blockNumber()+1)


class QCodeEditor(QPlainTextEdit):
    def __init__(self, sourceCodeFile, parent=None):
        super().__init__(parent)

        self.font = QFont("DejaVu Sans Mono"); # font for the info columsn
        self.setStyleSheet("QPlainTextEdit{font-family:'Dejavu Sans Mono';}") # font for the text

        highlight = syntax.PythonHighlighter(self.document())

        # LineInfoArea list
        self.lineInfoAreas = []

        # Editor settings
        self.setReadOnly(True)
        self.setTextInteractionFlags(self.textInteractionFlags() | Qt.TextSelectableByKeyboard)

        # colors
        self.lineHighlightColor      = QColor(Qt.yellow).lighter(170)
        self.lineReadColor           = QColor(244, 162, 97)
        self.lineReadHighlightColor  = QColor(231, 111, 81)
        self.lineWriteColor          = QColor(42, 157, 143)
        self.lineWriteHighlightColor = QColor(38, 70, 83)

        # Set the source text
        self.loadSourceCodeFile(sourceCodeFile)

        # Change the highlighted line
        self.cursorPositionChanged.connect(self.highlightCurrentLine)
        # Update all the LineAreas
        self.updateRequest.connect(self.updateLineInfoAreas)

        # Connect change event
        self.blockCountChanged.connect(self.updateMarginWidth)
        self.updateMarginWidth(0)

        # Insert debug output locations
        self.writeInfoList = []
        self.writeInfoList.append(print)

        # Other highlighted lines
        self.highlightedLines = []


    def loadSourceCodeFile(self, source_code_file):
        with open(source_code_file, 'r') as f:
            source_text = f.read()
        self.setPlainText(source_text)


    def addLineInfoArea(self, lineInfoArea):
        self.lineInfoAreas.append(lineInfoArea)


    # Write information (debug or otherwise) somewhere
    def writeInfo(self, text):
        for writer in self.writeInfoList:
            writer(text)


    def totalLineInfoAreaWidth(self):
        total_width = 0
        for c in self.lineInfoAreas:
            total_width += c.width()
        return total_width


    def updateLineInfoAreas(self, rect, dy):
        for c in self.lineInfoAreas:
            if dy:
                c.scroll(0, dy)
                pass
        if rect.contains(self.viewport().rect()):
            self.updateMarginWidth(0)


    def updateMarginWidth(self, _):
        self.setViewportMargins(
                self.totalLineInfoAreaWidth(),
                0, 0, 0)


    def resizeEvent(self, event):
        super().resizeEvent(event)
        cr = self.contentsRect()

        last_end_width = 0
        for c in self.lineInfoAreas:
            this_width = c.width()
            c.setGeometry(
                    QRect(cr.left()+last_end_width,
                        cr.top(),
                        this_width,
                        cr.height()))
            last_end_width += this_width


    def jumpToLine(self, line):
        cursor = self.document().findBlockByLineNumber(line)
        self.setTextCursor(cursor)

    def jumpToBlock(self, block):
        cursor = QTextCursor(block)
        self.setTextCursor(cursor)

    def highlightLine(self, block, color, font_color=None, underline=False):
        selection = QTextEdit.ExtraSelection()
        selection.format.setProperty(QTextFormat.FullWidthSelection, True)
        selection.cursor = QTextCursor(block)
        selection.format.setBackground(color)
        selection.cursor.clearSelection()

        if font_color != None:
            selection.format.setForeground(font_color)

        selection.format.setFontUnderline(underline)

        return selection


    def addHighlightedBlock(self, block, color, font_color=None, underline=False):
        # Get the selection
        selection = self.highlightLine(block, color, font_color, underline)
        # Save the selection
        self.highlightedLines.append(selection)

        # Return the selection, used to remove it
        return selection

    def removeHighlight(self, selection):
        try:
            self.highlightedLines.remove(selection)
        except IndexError:
            pass

    def updateHighlights(self, extraSelections=list()):
        self.setExtraSelections(self.highlightedLines + extraSelections)


    def highlightCurrentLine(self):
        extraSelections = []
        selection = QTextEdit.ExtraSelection()

        # Get the block under the cursor
        this_block = self.textCursor().block()

        # Add this line to the the selection
        extraSelections.append(
                self.highlightLine(this_block, self.lineHighlightColor))

        # Apply highlighted lines
        self.updateHighlights(extraSelections)
        #self.setExtraSelections(self.highlightedLines + extraSelections)

