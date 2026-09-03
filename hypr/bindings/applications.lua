o.bind("SUPER + t", "Terminal", hl.dsp.exec_cmd('uwsm-app -- xdg-terminal-exec --dir="$(omarchy-cmd-terminal-cwd)"'))
o.bind("SUPER + v", "Clipboard manager", "omarchy-shell shell toggle omarchy.clipboard")
