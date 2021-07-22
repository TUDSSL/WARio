"
" Run the callsite count result generator
"
let callsite_files=expand("%:p:h") . "/*.callsitecount.csv"
let callsite_command="callsites-to-quickfix " . expand("%") . " " . callsite_files

:cex []
:cex system(callsite_command)
:call clearmatches()

:highlight CallsiteGroup ctermbg=darkred ctermfg=lightgray
for d in getqflist()
    let mp = matchaddpos("CallsiteGroup", [d.lnum])
endfor

:copen
