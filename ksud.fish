#all subcommands
set -l commands boot-patch boot-restore get-sign supported-kmis         

#help parameter
complete -f ksud -s h -l help -d "Print help message or the help of the given subcommand(s)"

#disable file completion
complete -f ksud

#main command parameter
complete -f ksud -n "not __fish_seen_subcommand_from $commands" -s h -l help -d "Print help"
complete -f ksud -n "not __fish_seen_subcommand_from $commands" -s V -l version -d "Print version"

#main commands
complete -f ksud -n "not __fish_seen_subcommand_from $commands" -a boot-patch      -d "Patch boot or init_boot images to apply KernelSU"
complete -f ksud -n "not __fish_seen_subcommand_from $commands" -a boot-restore    -d "Restore boot or init_boot images patched by KernelSU"
complete -f ksud -n "not __fish_seen_subcommand_from $commands" -a get-sign        -d "Get apk size and hash"
complete -f ksud -n "not __fish_seen_subcommand_from $commands" -a supported-kmis  -d "show supported kmi versions"

#boot-patch
complete -F ksud -n "__fish_seen_subcommand_from boot-patch" -s b -l boot           -r -d "boot image path"
complete -F ksud -n "__fish_seen_subcommand_from boot-patch" -s k -l kernel         -r -d "kernel image path to replace"
complete -F ksud -n "__fish_seen_subcommand_from boot-patch" -s m -l module         -r -d "LKM module path to replace"
complete -F ksud -n "__fish_seen_subcommand_from boot-patch" -s i -l init           -r -d "init to be replaced"
complete -F ksud -n "__fish_seen_subcommand_from boot-patch" -s o -l out            -r -d "Output path"
complete -F ksud -n "__fish_seen_subcommand_from boot-patch"      -l magiskboot     -r -d "magiskboot path"
complete -f ksud -n "__fish_seen_subcommand_from boot-patch"      -l kmi            -r -d "KMI version"
complete -f ksud -n "__fish_seen_subcommand_from boot-patch"      -l out-name       -r -d "File name of the output"
complete -f ksud -n "__fish_seen_subcommand_from boot-patch"      -l cmdline        -r -d "Extra cmdline to append to boot image header"
complete -f ksud -n "__fish_seen_subcommand_from boot-patch"      -l adb-debug-prop -r -d "Add more adb_debug prop"
complete -f ksud -n "__fish_seen_subcommand_from boot-patch"      -l allow-shell       -d "Always allow shell to get root permission"
complete -f ksud -n "__fish_seen_subcommand_from boot-patch"      -l enable-adbd       -d "Force enable adbd and disable adbd auth"
complete -f ksud -n "__fish_seen_subcommand_from boot-patch"      -l no-install        -d "Do not (re-)install kernelsu, only modify configs"

#boot-restore
complete -F ksud -n "__fish_seen_subcommand_from boot-restore" -s b -l boot       -r -d "boot image path"
complete -F ksud -n "__fish_seen_subcommand_from boot-restore" -s o -l out        -r -d "Output path"
complete -F ksud -n "__fish_seen_subcommand_from boot-restore"      -l magiskboot -r -d "magiskboot path"
complete -f ksud -n "__fish_seen_subcommand_from boot-restore"      -l out-name   -r -d "File name of the output"

#get-sign(enable file path completion)
complete -F ksud -n "__fish_seen_subcommand_from get-sign"

#below subcommands don't have any parameter or subcommand avaliable
#supported-kmis