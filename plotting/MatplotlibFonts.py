# Matplotlib setup
from matplotlib import rcParams
from matplotlib import rc

# Use TrueType
rcParams['pdf.fonttype'] = 42

# For sans-serif
#rc("font", **{"sans-serif": ["Biolinum"]})
# For serif - matplotlib uses sans-serif family fonts by default
# To render serif fonts, you also need to tell matplotlib to use LaTeX in the backend.
#rc("font", **{"family": "sans-serif", "sans-serif": ["Biolinum"]})
#rc("text", usetex = True)

rcParams.update({
    "text.usetex": True,
    "font.family": "sans-serif",
    "font.sans-serif": ["Biolinum"],
    "font.size": 11
})

rcParams['text.latex.preamble']=r"\usepackage{amsmath} \usepackage{color}"