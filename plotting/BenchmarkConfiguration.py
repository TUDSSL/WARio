from Color import *

# Configurations in order of use and with the name to use
ConfigurationNameMap = {
    'opt-ratchet': 'Ratchet',
    'opt-baseline': 'R-PDG',
    'opt-writebuf': r'\textit{write clustering}',
    'opt-loop': r'\textit{loop write clustering}',
    'opt-reducedpop': r'\textit{epilog optimization}',
    'opt-all': r'\textbf{Wario} (complete)',
    'opt-all-expander': r'\textbf{Wario}+expander'
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
