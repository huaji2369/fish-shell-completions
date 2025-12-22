complete -f wayvnc -s C -l config            -r -d "Select a config file"
complete -f wayvnc -s f -l max-fps           -r -d "Set rate limit"
complete -f wayvnc -s k -l keyboard          -r -d "Select keyboard layout with an optional variant"
complete -f wayvnc -s n -l name              -r -d "Set the desktop name"
complete -f wayvnc -s o -l output            -r -d "Select output to capture"
complete -f wayvnc -s s -l seat              -r -d "Select seat by name"
complete -f wayvnc -s S -l socket            -r -d "Control socket path"
complete -f wayvnc -s d -l disable-input        -d "Disable all remote input"
complete -f wayvnc -s D -l detached             -d "Start detached from a compositor"
complete -f wayvnc -s e -l exit-on-disconnect   -d "Exit when last client disconnects"
complete -f wayvnc -s g -l gpu                  -d "Enable features that need GPU"
complete -f wayvnc -s h -l help                 -d "Get help"
complete -f wayvnc -s p -l show-performance     -d "Show performance counters"
complete -f wayvnc -s r -l render-cursor        -d "Enable overlay cursor rendering"
complete -f wayvnc -s R -l disable-resizing     -d "Disable automatic resizing"
complete -f wayvnc -s t -l transient-seat       -d "Use transient seat"
complete -f wayvnc -s u -l unix-socket          -d "Create unix domain socket"
complete -f wayvnc -s v -l verbose              -d "Be more verbose"
complete -f wayvnc -s V -l version              -d "Show version info"
complete -f wayvnc -s w -l websocket            -d "Create a websocket"
complete -f wayvnc -s x -l external-listener-fd -d "The address is a pre-bound file descriptor"

complete -x wayvnc -s L -l log-level -a error
complete -x wayvnc -s L -l log-level -a warning
complete -x wayvnc -s L -l log-level -a info
complete -x wayvnc -s L -l log-level -a debug 
complete -x wayvnc -s L -l log-level -a quiet
complete -f wayvnc -s L -l log-level -d "Set log level"