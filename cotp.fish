#TODO: add function for complete the totp code

# all subcommands
set -l commands add edit list delete import export extract passwd help

#disable file completion
complete -f cotp

#help parameter
complete -f cotp -s h -l help -d "Print help"

#main command options
complete -f cotp -n "not __fish_seen_subcommand_from $commands"      -l password-stdin   -d "Fetch the password from standard input"
complete -F cotp -n "not __fish_seen_subcommand_from $commands" -s d -l database-path    -d "Set the database path"
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -s V -l version          -d "Print version"

#main commands
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -a add      -d "Add new OTP code"
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -a edit     -d "Edit an existing OTP Code"
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -a list     -d "List codes"
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -a delete   -d "Delete codes"
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -a import   -d "Import codes from other apps"
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -a export   -d "Export cotp database"
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -a extract  -d "Copies the selected code into the clipboard"
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -a passwd   -d "Change database password"
complete -f cotp -n "not __fish_seen_subcommand_from $commands" -a help     -d "Print this message or the help of the given subcommand(s)"

#add
complete -f cotp -n "__fish_seen_subcommand_from add" -s a -l algorithm  -ra "sha1 sha256 sha512 md5"      -d "OTP Algorithm"
complete -f cotp -n "__fish_seen_subcommand_from add" -s t -l type       -ra "totp hotp steam yandex motp" -d "Specify the OTP code type"
complete -f cotp -n "__fish_seen_subcommand_from add" -s c -l counter                                      -d "HOTP counter"
complete -f cotp -n "__fish_seen_subcommand_from add" -s d -l digits                                       -d "Code digits"
complete -f cotp -n "__fish_seen_subcommand_from add" -s i -l issuer                                       -d "Code issuer"
complete -f cotp -n "__fish_seen_subcommand_from add" -s u -l otpuri                                       -d "Add OTP code via an OTP URI"
complete -f cotp -n "__fish_seen_subcommand_from add" -s e -l period                                       -d "Code period"
complete -f cotp -n "__fish_seen_subcommand_from add" -s l -l label                                        -d "Code label"
complete -f cotp -n "__fish_seen_subcommand_from add" -s p -l pin                                          -d "Yandex/MOTP pin"

#edit
complete -f cotp -n "__fish_seen_subcommand_from edit" -s a -l algorithm -ra "sha1 sha256 sha512 md5" -d "OTP algorithm"
complete -f cotp -n "__fish_seen_subcommand_from edit" -s k -l change-secret                          -d "Change code secret"
complete -f cotp -n "__fish_seen_subcommand_from edit" -s c -l counter                                -d "HOTP counter"
complete -f cotp -n "__fish_seen_subcommand_from edit" -s d -l digits                                 -d "Code digits"
complete -f cotp -n "__fish_seen_subcommand_from edit" -s s -l issuer                                 -d "Code issuer"
complete -f cotp -n "__fish_seen_subcommand_from edit" -s e -l period                                 -d "Code period"
complete -f cotp -n "__fish_seen_subcommand_from edit" -s i -l index                                  -d "Code Index"
complete -f cotp -n "__fish_seen_subcommand_from edit" -s l -l label                                  -d "Code label"
complete -f cotp -n "__fish_seen_subcommand_from edit" -s p -l pin                                    -d "Yandex / MOTP pin"

#list
complete -f cotp -n "__fish_seen_subcommand_from list" -s p -l plain  -d "List OTP codes in plain format"
complete -f cotp -n "__fish_seen_subcommand_from list" -s e -l json   -d "List OTP codes in JSON format"

#delete
complete -f cotp -n "__fish_seen_subcommand_from delete" -s s -l issuer -d "Issuer of the first matching code that will be deleted"
complete -f cotp -n "__fish_seen_subcommand_from delete" -s i -l index  -d "Code Index"
complete -f cotp -n "__fish_seen_subcommand_from delete" -s l -l label  -d "Label of the first matching code that will be deleted"

#import
complete -F cotp -n "__fish_seen_subcommand_from import" -s p -l path                   -r -d "Backup file path"
complete -f cotp -n "__fish_seen_subcommand_from import" -s m -l microsoft-authenticator  -d "Import from Microsoft Authenticator"
complete -f cotp -n "__fish_seen_subcommand_from import" -s g -l google-authenticator     -d "Import from Google Authenticator backup"
complete -f cotp -n "__fish_seen_subcommand_from import" -s k -l aegis-encrypted          -d "Import from Aegis Encrypted backup"
complete -f cotp -n "__fish_seen_subcommand_from import" -s u -l authy-exported           -d "Import from exported Authy Database"
complete -f cotp -n "__fish_seen_subcommand_from import" -s f -l freeotp-plus             -d "Import from FreeOTP+ backup"
complete -f cotp -n "__fish_seen_subcommand_from import" -s r -l freeotp                  -d "Import from FreeOTP backup"
complete -f cotp -n "__fish_seen_subcommand_from import" -s o -l otp-uri                  -d "Import from OTP Uri batch"
complete -f cotp -n "__fish_seen_subcommand_from import" -s e -l andotp                   -d "Import from andOTP backup"
complete -f cotp -n "__fish_seen_subcommand_from import" -s a -l aegis                    -d "Import from Aegis backup"
complete -f cotp -n "__fish_seen_subcommand_from import" -s t -l authy                    -d "Import from Authy backup"
complete -f cotp -n "__fish_seen_subcommand_from import" -s c -l cotp                     -d "Import from cotp backup"

#export
complete -F cotp -n "__fish_seen_subcommand_from export" -s p -l path       -r -d "Export file path"
complete -f cotp -n "__fish_seen_subcommand_from export" -s c -l cotp          -d "Export into cotp backup"
complete -f cotp -n "__fish_seen_subcommand_from export" -s e -l andotp        -d "Export into andOTP backup"
complete -f cotp -n "__fish_seen_subcommand_from export" -s o -l otp-uri       -d "Export into an OTP URI"
complete -f cotp -n "__fish_seen_subcommand_from export" -s f -l freeotp-plus  -d "Export into the FreeOTP+ database format"

#extract
complete -f cotp -n "__fish_seen_subcommand_from extract" -s c -l copy-clipboard   -d "Copy the code to the clipboard"
complete -f cotp -n "__fish_seen_subcommand_from extract" -s s -l issuer           -d "Code issuer, may be a glob pattern"
complete -f cotp -n "__fish_seen_subcommand_from extract" -s l -l label            -d "Code label, may be a glob pattern"
complete -f cotp -n "__fish_seen_subcommand_from extract" -s i -l index            -d "Code Index"
