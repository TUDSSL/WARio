from Color import *

# Configurations in order of use and with the name to use
ConfigurationNameMap = {
    'opt-ratchet': 'Ratchet',
    'opt-baseline': 'R-PDG',
    'opt-reducedpop': r'Epilog Optimizer',
    'opt-writebuf': r'Write Clusterer',
    'opt-loop': r'Loop Write Clusterer',
    'opt-all': r'\textbf{WARio} (complete)',
    'opt-all-expander': r'\textbf{WARio}\,+\,Expander'
}

ConfigurationColorMap = {
    'opt-ratchet': Color['darkgrey'],
    'opt-baseline': Color['grey'],
    'opt-writebuf': Color['teal'],
    'opt-loop': Color['blue'],
    'opt-reducedpop': Color['green'],
    'opt-all': Color['cyan'],
    'opt-all-expander': '#6699cc', # add hashing?
}

BenchmarkNameMap = {
    'coremark': r'CoreMark',
    'sha': r'SHA',
    'crc': r'CRC',
    'aes': r'Tiny AES',
    'dijkstra': r'Dijkstra',
    'picojpeg': r'picojpeg'
}