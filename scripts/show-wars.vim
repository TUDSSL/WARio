"
" Run the WARs Quickfix result generator
"
let war_files=expand("%:p:h") . "/*.wars"
let war_command="wars-to-quickfix " . expand("%") . " " . war_files

:cex []
:cex system(war_command)

":highlight WarGroup ctermbg=darkcyan guibg=red
:call clearmatches()

":highlight WarGroup cterm=underline
:highlight WarGroup ctermbg=darkred ctermfg=lightgray
for d in getqflist()
    "echo bufname(d.bufnr) ':' d.lnum
    let mp = matchaddpos("WarGroup", [d.lnum])
    "echo mp
endfor

:copen
