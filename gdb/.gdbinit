set history save on
set history size unlimited
set history remove-duplicates unlimited
set history filename ~/.local/state/gdb/history
maint set worker-threads 8
set auto-load safe-path /
source /home/roman/git/gdb-dashboard/.gdbinit
set debuginfo enabled on
