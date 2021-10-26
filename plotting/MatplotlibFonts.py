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

#rc.rcParams['text.latex.preamble'] = [
#    r'\usepackage{color}',
#    r'\usepackage{siunitx}',   # i need upright \micro symbols, but you need...
#    r'\sisetup{detect-all}',   # ...this to force siunitx to actually use your fonts
#    r'\usepackage{helvet}',    # set the normal font here
#    r'\usepackage{sansmath}',  # load up the sansmath so that math -> helvet
#    r'\sansmath'               # <- tricky! -- gotta actually tell tex to use!
#]  

#rcParams['text.latex.preamble'] = [
#    r'\usepackage{amsmath}',
#    r'\usepackage{color}',
#    r'\usepackage{siunitx}',
#    #r'\usepackage{libertine}'
#]  

rcParams['text.latex.preamble']=r"\usepackage{amsmath} \usepackage{color} \usepackage{sfmath}"