#all subcommands
set -l wsu_commands status install setup remove update module magiskhide denylist zygisk superuser

#disable file completions
complete -f -c wsu 

#help parameter
complete -f -c wsu -s h -l help -d "show help message and exit"

#parameter for main command
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -s V -l version -d "Print version"

#main commands
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a status     -d "Show Magisk status"
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a install    -d "Install Magisk"
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a setup      -d "Run additional setup for Magisk"
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a remove     -d "Remove Magisk"
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a update     -d "Update Magisk"
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a module     -d "Manage magisk modules"
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a magiskhide -d "Manage MagiskHide (Kitsune)"
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a denylist   -d "Manage Denylist (Magisk)"
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a zygisk     -d "Manage Zygisk"
complete -f -c wsu -n "not __fish_seen_subcommand_from $wsu_commands" -a superuser  -d "Manage su access"

#install
complete -F -c wsu -n "__fish_seen_subcommand_from install"      -l apk  -r -d "Path to target apk (optional)"
complete -f -c wsu -n "__fish_seen_subcommand_from install" -s k -l kitsune -d "Kitsune Magisk"

#module    
set -l module_subcommands list remove install disable enable
complete -f -c wsu -n "__fish_seen_subcommand_from module; and not __fish_seen_subcommand_from $module_subcommands" -a list    -d "List installed magisk modules"
complete -f -c wsu -n "__fish_seen_subcommand_from module; and not __fish_seen_subcommand_from $module_subcommands" -a remove  -d "Remove magisk module"
complete -f -c wsu -n "__fish_seen_subcommand_from module; and not __fish_seen_subcommand_from $module_subcommands" -a install -d "Install magisk module"
complete -f -c wsu -n "__fish_seen_subcommand_from module; and not __fish_seen_subcommand_from $module_subcommands" -a disable -d "Disable magisk module"
complete -f -c wsu -n "__fish_seen_subcommand_from module; and not __fish_seen_subcommand_from $module_subcommands" -a enable  -d "Enable magisk module"
#enable file completion for module install subcommand
complete -F -c wsu -n "__fish_seen_subcommand_from module; and __fish_seen_subcommand_from install"

#magiskhide
set -l magiskhide_subcommands status sulist enable disable add rm ls
complete -f -c wsu -n "__fish_seen_subcommand_from magiskhide; and not __fish_seen_subcommand_from $magiskhide_subcommands" -a status   -d "Show MagiskHide status"
complete -f -c wsu -n "__fish_seen_subcommand_from magiskhide; and not __fish_seen_subcommand_from $magiskhide_subcommands" -a sulist   -d "Show SuList status / Manage SuList"
complete -f -c wsu -n "__fish_seen_subcommand_from magiskhide; and not __fish_seen_subcommand_from $magiskhide_subcommands" -a enable   -d "Enable MagiskHide"
complete -f -c wsu -n "__fish_seen_subcommand_from magiskhide; and not __fish_seen_subcommand_from $magiskhide_subcommands" -a disable  -d "Disable MagiskHide"
complete -f -c wsu -n "__fish_seen_subcommand_from magiskhide; and not __fish_seen_subcommand_from $magiskhide_subcommands" -a add      -d "Add target to hidelist/sulist"
complete -f -c wsu -n "__fish_seen_subcommand_from magiskhide; and not __fish_seen_subcommand_from $magiskhide_subcommands" -a rm       -d "Remove target from hidelist/sulist"
complete -f -c wsu -n "__fish_seen_subcommand_from magiskhide; and not __fish_seen_subcommand_from $magiskhide_subcommands" -a ls       -d "List targets in hidelist/sulist"
complete -f -c wsu -n "__fish_seen_subcommand_from magiskhide; and __fish_seen_subcommand_from $magiskhide_subcommands; and not __fish_seen_subcommand_from enable disable" -a enable  -d "Enable SuList"
complete -f -c wsu -n "__fish_seen_subcommand_from magiskhide; and __fish_seen_subcommand_from $magiskhide_subcommands; and not __fish_seen_subcommand_from enable disable" -a disable -d "Disable SuList"

#denylist  
set -l denylist_subcommands status enable disable add rm ls
complete -f -c wsu -n "__fish_seen_subcommand_from denylist; and not __fish_seen_subcommand_from $denylist_subcommands" -a status   -d "Show Denylist status"
complete -f -c wsu -n "__fish_seen_subcommand_from denylist; and not __fish_seen_subcommand_from $denylist_subcommands" -a enable   -d "Enable Denylist"
complete -f -c wsu -n "__fish_seen_subcommand_from denylist; and not __fish_seen_subcommand_from $denylist_subcommands" -a disable  -d "Disable Denylist"
complete -f -c wsu -n "__fish_seen_subcommand_from denylist; and not __fish_seen_subcommand_from $denylist_subcommands" -a add      -d "Add target to Denylist"
complete -f -c wsu -n "__fish_seen_subcommand_from denylist; and not __fish_seen_subcommand_from $denylist_subcommands" -a rm       -d "Remove target from Denylist"
complete -f -c wsu -n "__fish_seen_subcommand_from denylist; and not __fish_seen_subcommand_from $denylist_subcommands" -a ls       -d "List targets in Denylist"

#superuser 
complete -f -c wsu -n "__fish_seen_subcommand_from superuser; and not __fish_seen_subcommand_from list deny allow" -a list  -d "List allowed apps"
complete -f -c wsu -n "__fish_seen_subcommand_from superuser; and not __fish_seen_subcommand_from list deny allow" -a allow -d "Allow su access for app"
complete -f -c wsu -n "__fish_seen_subcommand_from superuser; and not __fish_seen_subcommand_from list deny allow" -a deny  -d "Deny su access for app"

#zygisk    
complete -f -c wsu -n "__fish_seen_subcommand_from zygisk; and not __fish_seen_subcommand_from status enable disable" -a status  -d "Show Zygisk status"
complete -f -c wsu -n "__fish_seen_subcommand_from zygisk; and not __fish_seen_subcommand_from status enable disable" -a enable  -d "Enable Zygisk"
complete -f -c wsu -n "__fish_seen_subcommand_from zygisk; and not __fish_seen_subcommand_from status enable disable" -a disable -d "Disable Zygisk"

#below subcommands don't have any parameter or subcommand avaliable
#status
#setup
#remove    
#update    
