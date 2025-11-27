# use with packages below:
# pmbootstrap
# pmbootstrap-git(CNRepo/AUR)
##################################################
###all pmbootstrap commands
set -l commands\
    shutdown\
    index\
    work_migrate\
    repo_missing\
    kconfig\
    export\
    sideload\
    netboot\
    flasher\
    initfs\
    qemu\
    pkgrel_bump\
    pkgver_bump\
    aportupgrade\
    newapkbuild\
    lint\
    test\
    status\
    ci\
    init\
    log\
    zap\
    stats\
    update\
    build_init\
    chroot\
    install\
    checksum\
    aportgen\
    build\
    deviceinfo_parse\
    apkbuild_parse\
    apkindex_parse\
    config\
    bootimg_analyze\
    pull
;

# frequently used list of architectures
set -l arch "armv7 aarch64 x86_64 x86 armhf s390x ppc64le riscv64 loongarch64"

#help parameter can be used on any (sub)commands
complete -f pmbootstrap -s h -l help -d "show help message and exit"

#disable file completion for the main command
complete -f pmbootstrap

###main command parameters
complete -F pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s c -l config      -r -d "path to config file"
complete -F pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s p -l aports      -r -d "pmaports path"
complete -F pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s w -l work        -r -d "folder where all data gets stored"
complete -F pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s l -l log         -r -d "path to log file"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s j -l jobs        -r -d "parallel jobs when compiling"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s E -l extra-space -r -d "additional space to allocate to the image in MB"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s B -l boot-size   -r -d "boot partition size on target machine in MB"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s t -l timeout     -r -d "seconds after which processes get killed"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s V -l version        -d "show version number and exit"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s y -l assume-yes     -d "Assume yes to all question prompts"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s o -l offline        -d "Do not attempt to update the package index files"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s v -l verbose        -d "write even more to the logfiles"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -s q -l quiet          -d "do not output any log messages"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -l as-root             -d "Allow running as root"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -l no-ccache           -d "do not cache the compiled output"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -l no-cross            -d "disable cross compiler"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -l details-to-stdout   -d "print details to stdout"

###main command
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a shutdown        -d "umount, unregister binfmt"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a index           -d "re-index all repositories with custom built packages"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a work_migrate    -d "migrate work folder version on demand"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a repo_missing    -d "list all packages + depends from pmaports for building the repository"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a kconfig         -d "change or edit kernel configs"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a export          -d "create symlinks to generated image files"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a sideload        -d "Push packages to a running device"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a netboot         -d "launch nbd server with pmOS rootfs"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a flasher         -d "flash something to the target device"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a initfs          -d "do something with the initramfs"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a pkgrel_bump     -d "increase the pkgrel of a package"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a pkgver_bump     -d "increase the pkgver and reset pkgrel to 0 of a package"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a aportupgrade    -d "check for outdated packages that need upgrading"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a newapkbuild     -d "get a template to package new software"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a lint            -d "run quality checks on pmaports"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a test            -d "Internal pmbootstrap test tools"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a status          -d "show a config and pmaports overview"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a ci              -d "run continuous integration scripts locally"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a init            -d "initialize config file"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a log             -d "follow the pmbootstrap logfile"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a zap             -d "safely delete chroot folders"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a stats           -d "show ccache stats"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a update          -d "update all existing APKINDEX files"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a build_init      -d "initialize build environment"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a chroot          -d "start shell in chroot"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a install         -d "set up device specific chroot and install to SD card or image file"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a checksum        -d "update aport checksums"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a aportgen        -d "generate a postmarketOS specific package build recipe"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a build           -d "create a package for a specific architecture"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a config          -d "get and set pmbootstrap options"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a bootimg_analyze -d "extract all the information from an existing boot.img"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a pull            -d "update all git repositories that pmbootstrap cloned"
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a qemu
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a deviceinfo_parse
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a apkbuild_parse
complete -f pmbootstrap -n "not __fish_seen_subcommand_from $commands" -a apkindex_parse

#repo_missing
complete -f pmbootstrap -n "__fish_seen_subcommand_from repo_missing" -l arch -ra $arch

#TODO: add package name completion
###<kconfig
complete -F pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from check edit migrate generate"
#check
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and not __fish_seen_subcommand_from check edit migrate generate" -a check      -d "check kernel aport config"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from check"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from check" -s f -l force      -d "check all kernels, even the ones that would be ignored by default"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from check" -s k -l keep-going -d "continue on errors instead of aborting on the first error"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from check" -l no-details      -d "print one generic error per component"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from check" -l file         -r -d "check a file directly instead of a config in a package"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from check" -l categories   -r -d "a comma separated list of additional kconfig categories to check"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from check" -l arch         -ra $arch
#edit
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and not __fish_seen_subcommand_from check edit migrate generate" -a edit       -d "edit kernel aport config"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from edit" -l arch     -ra $arch
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from edit" -l fragment -r -d "fragment filename to save changes"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from edit" -s x           -d "use xconfig"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from edit" -s n           -d "use nconfig"
#migrate
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and not __fish_seen_subcommand_from check edit migrate generate" -a migrate    -d "Migrate kconfig from older version to newer"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from migrate" -l arch -ra $arch
#generate
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and not __fish_seen_subcommand_from check edit migrate generate" -a generate   -d "generate kernel config from fragments"
complete -f pmbootstrap -n "__fish_seen_subcommand_from kconfig; and __fish_seen_subcommand_from generate" -l arch -ra $arch
###>

#TODO: add package name completion
###export
complete -F pmbootstrap -n "__fish_seen_subcommand_from export"
complete -f pmbootstrap -n "__fish_seen_subcommand_from export" -l no-install -d "skip updating kernel/initfs"
complete -f pmbootstrap -n "__fish_seen_subcommand_from export" -l odin       -d "generate odin flashable tarball"

###sideload
complete -F pmbootstrap -n "__fish_seen_subcommand_from sideload"
complete -f pmbootstrap -n "__fish_seen_subcommand_from sideload" -l install-key      -d "install the apk key from this machine if needed"
complete -f pmbootstrap -n "__fish_seen_subcommand_from sideload" -l host          -r -d "ip of the device over wifi"
complete -f pmbootstrap -n "__fish_seen_subcommand_from sideload" -l port          -r -d "SSH port of the device over wifi"
complete -f pmbootstrap -n "__fish_seen_subcommand_from sideload" -l user          -r -d "use a different username than the one set in init"
complete -f pmbootstrap -n "__fish_seen_subcommand_from sideload" -l arch -a $arch -r -d "use the given architecture"

###<flasher
set -l flasher_commands boot flash_kernel flash_lk2nd flash_rootfs flash_vbmeta flash_dtbo sideload list_flavors list_devices
#subcommands
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and not __fish_seen_subcommand_from $flasher_commands " -a boot         -d "boot a kernel once"
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and not __fish_seen_subcommand_from $flasher_commands " -a flash_kernel -d "flash a kernel"
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and not __fish_seen_subcommand_from $flasher_commands " -a flash_lk2nd  -d "flash lk2nd"
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and not __fish_seen_subcommand_from $flasher_commands " -a flash_rootfs -d "flash the rootfs to a partition on the device"
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and not __fish_seen_subcommand_from $flasher_commands " -a flash_vbmeta -d "generate and flash AVB 2.0 image with disable verification flag set"
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and not __fish_seen_subcommand_from $flasher_commands " -a flash_dtbo   -d "flash dtbo image"
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and not __fish_seen_subcommand_from $flasher_commands " -a sideload     -d "sideload recovery zip"
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and not __fish_seen_subcommand_from $flasher_commands " -a list_flavors -d "list installed kernel flavors inside the device rootfs"
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and not __fish_seen_subcommand_from $flasher_commands " -a list_devices -d "show connected devices"
#parameters
set -l flasher_method 0xffff fastboot heimdall mtkclient none rkdeveloptool uuu
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher" -l method -ra "$flasher_method"                        -d "override flash method"
#parameters avaliable when using heimdall as flashing method
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and __fish_seen_subcommand_from heimdall" -l no-reboot -d "don't automatically reboot after flashing"
complete -f pmbootstrap -n "__fish_seen_subcommand_from flasher; and __fish_seen_subcommand_from heimdall" -l resume    -d "resume flashing after using --no-reboot"
###>

###initfs
complete -f pmbootstrap -n "__fish_seen_subcommand_from initfs; and not __fish_seen_subcommand_from hook_ls hook_add hook_del ls build extract" -a hook_ls  -d "list available and installed hook packages"
complete -f pmbootstrap -n "__fish_seen_subcommand_from initfs; and not __fish_seen_subcommand_from hook_ls hook_add hook_del ls build extract" -a hook_add -d "add a hook package"
complete -f pmbootstrap -n "__fish_seen_subcommand_from initfs; and not __fish_seen_subcommand_from hook_ls hook_add hook_del ls build extract" -a hook_del -d "uninstall a hook package"
complete -f pmbootstrap -n "__fish_seen_subcommand_from initfs; and not __fish_seen_subcommand_from hook_ls hook_add hook_del ls build extract" -a ls       -d "list initramfs contents"
complete -f pmbootstrap -n "__fish_seen_subcommand_from initfs; and not __fish_seen_subcommand_from hook_ls hook_add hook_del ls build extract" -a build    -d "(re)build the initramfs"
complete -f pmbootstrap -n "__fish_seen_subcommand_from initfs; and not __fish_seen_subcommand_from hook_ls hook_add hook_del ls build extract" -a extract  -d "extract the initramfs to a temporary folder"

###qemu
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu" -s m -l memory           -r                 -d "guest RAM (default: 1024)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu" -s p -l port             -r                 -d "SSH port (default: 2222)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l cmdline          -r                 -d "override kernel commandline"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l cpu              -r                 -d "Override emulated QEMU CPU."
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l image-size       -r                 -d "set rootfs size (e.g. 2048M or 2G)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l second-storage   -r                 -d "add a second storage with the given size"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l video            -r                 -d "Video resolution for QEMU (WidthxHeight@RefreshRate)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l display          -ra "sdl gtk none" -d "QEMU's display parameter (default: gtk,gl=on)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l audio            -ra "alsa pa sdl"  -d "QEMU's audio backend"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l no-kvm                              -d "Avoid using KVM even when available"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l tablet                              -d "Use 'tablet' as input for QEMU."
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l no-gl                               -d "Avoid using GL for accelerating graphics in QEMU"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l host-qemu                           -d "Use the host system's qemu"
complete -f pmbootstrap -n "__fish_seen_subcommand_from qemu"      -l efi                                 -d "Use EFI boot"

#TODO: add package name completion
###pkgrel_bump
complete -F pmbootstrap -n "__fish_seen_subcommand_from pkgrel_bump"
complete -f pmbootstrap -n "__fish_seen_subcommand_from pkgrel_bump" -l dry  -d "exit with >0 when a package would have been bumped instead"
complete -f pmbootstrap -n "__fish_seen_subcommand_from pkgrel_bump" -l auto -d "bump all packages which depend on a library which had an incompatible update"

#TODO: add package name completion
###pkgver_bump
complete -F pmbootstrap -n "__fish_seen_subcommand_from pkgver_bump"

###aportupgrade
complete -F pmbootstrap -n "__fish_seen_subcommand_from aportupgrade"
complete -f pmbootstrap -n "__fish_seen_subcommand_from aportupgrade" -l ref       -r -d "git ref (tag, commit, etc) to use"
complete -f pmbootstrap -n "__fish_seen_subcommand_from aportupgrade" -l dry          -d "print the changes that would be made instead"
complete -f pmbootstrap -n "__fish_seen_subcommand_from aportupgrade" -l all          -d "iterate through all packages"
complete -f pmbootstrap -n "__fish_seen_subcommand_from aportupgrade" -l all-stable   -d "iterate through all non-git packages"
complete -f pmbootstrap -n "__fish_seen_subcommand_from aportupgrade" -l all-git      -d "iterate through all git packages"

#TODO: add package name completion
###newapkbuild
complete -F pmbootstrap -n "__fish_seen_subcommand_from newapkbuild"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -l folder -r -d "set postmarketOS aports folder (default: main)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s n      -r -d "set package name (only use with SRCURL)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s d      -r -d "set package description"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s l      -r -d "set package license identifier from https://spdx.org/licenses/"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s u      -r -d "set package URL"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s a         -d "create autotools package (use ./configure ...)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s C         -d "create CMake package (assume cmake/ is there)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s m         -d "create meson package (assume meson.build is there)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s p         -d "create perl package (assume Makefile.PL is there)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s y         -d "create python package (assume setup.py is there)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s e         -d "create python package (assume pyproject.toml is there)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s r         -d "create rust package (assume Cargo.toml is there)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s s         -d "use sourceforge source URL"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s c         -d "copy a sample init.d, conf.d and install script"
complete -f pmbootstrap -n "__fish_seen_subcommand_from newapkbuild" -s f         -d "force even if directory already exists"

#TODO: add package name completion
###lint
complete -F pmbootstrap -n "__fish_seen_subcommand_from lint"

#TODO: add package name completion
###test
complete -F pmbootstrap -n "__fish_seen_subcommand_from test"

###ci
complete -F pmbootstrap -n "__fish_seen_subcommand_from ci"
complete -f pmbootstrap -n "__fish_seen_subcommand_from ci" -s a -l all  -d "run all scripts"
complete -f pmbootstrap -n "__fish_seen_subcommand_from ci" -s f -l fast -d "run fast scripts only"

###init
complete -f pmbootstrap -n "__fish_seen_subcommand_from init" -l shallow-initial-clone -d "do a shallow clone if pmaports has to be cloned"

###log
complete -f pmbootstrap -n "__fish_seen_subcommand_from log" -s n -l lines -r -d "count of initial output lines"
complete -f pmbootstrap -n "__fish_seen_subcommand_from log" -s c -l clear    -d "clear the log"

###zap
complete -f pmbootstrap -n "__fish_seen_subcommand_from zap"       -l dry                  -d "print out what would have been deleted instead"
complete -f pmbootstrap -n "__fish_seen_subcommand_from zap" -o hc -l http                 -d "also delete http cache"
complete -f pmbootstrap -n "__fish_seen_subcommand_from zap" -s d  -l distfiles            -d "also delete downloaded source tarballs"
complete -f pmbootstrap -n "__fish_seen_subcommand_from zap" -s p  -l pkgs-local           -d "also delete all locally compiled packages"
complete -f pmbootstrap -n "__fish_seen_subcommand_from zap" -s m  -l pkgs-local-mismatch  -d "also delete locally compiled packages without existing aport of same version"
complete -f pmbootstrap -n "__fish_seen_subcommand_from zap" -s n  -l netboot              -d "also delete stored images for netboot"
complete -f pmbootstrap -n "__fish_seen_subcommand_from zap" -s o  -l pkgs-online-mismatch -d "also delete outdated packages from online mirrors"
complete -f pmbootstrap -n "__fish_seen_subcommand_from zap" -s r  -l rust                 -d "also delete rust related caches"
complete -f pmbootstrap -n "__fish_seen_subcommand_from zap" -s a  -l all                  -d "delete everything"

###stats
complete -f pmbootstrap -n "__fish_seen_subcommand_from stats" -l arch -ra $arch

###update
complete -f pmbootstrap -n "__fish_seen_subcommand_from update" -l arch -ra $arch -d "only update a specific architecture"
complete -f pmbootstrap -n "__fish_seen_subcommand_from update" -l non-existing   -d "update all APKINDEX files"

###build_init
complete -f pmbootstrap -n "__fish_seen_subcommand_from build_init" -s b -l buildroot -ra $arch -d "Chroot for building packages, defaults to device architecture"
complete -f pmbootstrap -n "__fish_seen_subcommand_from build_init" -s s -l suffix    -r        -d "Specify any chroot suffix, defaults to 'native'"

###chroot
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot"      -l user                                                  -d "run the command as user, not as root"
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot"      -l image                                                 -d "Mount the rootfs image and treat it like a normal chroot."
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot"      -l usb                                                   -d "Make USB devices accessible inside the chroot."
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot"      -l output           -a "LOG STDOUT INTERACTIVE TUI NULL" -d "set the target of output"
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot"      -l add              -r                                   -d "build/install comma separated list of packages in the chroot before entering it"
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot" -s s -l suffix           -r                                   -d "Specify any chroot suffix, defaults to 'native'"
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot" -s b -l buildroot        -ra $arch                            -d "Chroot for building packages, defaults to device architecture"
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot" -s x -l xauth                                                 -d "Copy .Xauthority and set environment variables(native chroot only)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot" -s i -l install-blockdev                                      -d "Create a sparse image file and mount it as /dev/install"
complete -f pmbootstrap -n "__fish_seen_subcommand_from chroot" -s r -l rootfs                                                -d "Chroot for the device root file system"

###install
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-sshd                                          -d "do not enable the SSH daemon by default"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-firewall                                      -d "do not enable the firewall by default"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-cgpt                                          -d "do not use cgpt partition table"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l zap                                              -d "zap chroots before installing"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l single-partition                                 -d "Create a single partition that contains both boot and root files"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-split                                         -d "create combined boot and root image file"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l split                                            -d "create separate boot and root image files"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l disk                                             -d "write to the given block device instead"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l android-recovery-zip                             -d "generate TWRP flashable zip"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-image                                         -d "do not generate an image"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l recovery-no-kernel                               -d "do not overwrite the existing kernel"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l fde                                              -d "use full disk encryption"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-base                                          -d "do not install postmarketos-base"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-recommends                                    -d "do not install packages listed in _pmb_recommends of the UI pmaports"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l sparse                                           -d "generate sparse image file"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-sparse                                        -d "do not generate sparse image file"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l on-device-installer                              -d "enable on-device installer"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l ondev                                            -d "enable on-device installer"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-local-pkgs                                    -d "do not install locally compiled packages and package signing keys"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l no-rootfs                                        -d "do not generate a pmOS rootfs"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l password                   -r                    -d "dummy password for automating the installation"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l sdcard                     -r                    -d "write to the given block device instead"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l recovery-install-partition -r                    -d "partition to flash from recovery"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l cipher                     -r                    -d "cryptsetup cipher used to encrypt the the rootfs"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l iter-time                  -r                    -d "cryptsetup iteration time (in ms)"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l add                        -r                    -d "comma separated list of packages to be added to the rootfs"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l cp                         -r                    -d "copy one or more files from the host system path to the target path"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l sector-size                -ra "512 2048 4096"   -d "set the sector size for the image file"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install" -l filesystem                 -ra "ext4 f2fs btrfs" -d "root filesystem type"
complete -f pmbootstrap -n "__fish_seen_subcommand_from install; and __fish_seen_subcommand_from --disk" -l rsync    -d "update the disk using rsync"

#TODO: add package name completion
###checksum
complete -F pmbootstrap -n "__fish_seen_subcommand_from checksum"
complete -f pmbootstrap -n "__fish_seen_subcommand_from checksum" -l verify -d "download sources and verify the checksums instead"

###aportgen
complete -F pmbootstrap -n "__fish_seen_subcommand_from aportgen"
complete -f pmbootstrap -n "__fish_seen_subcommand_from aportgen" -s a -l fork-alpine               -d "fork the alpine upstream package"
complete -f pmbootstrap -n "__fish_seen_subcommand_from aportgen" -s r -l fork-alpine-retain-branch -d "fork the alpine upstream, but don't change branch to match the current channel"

###build
complete -F pmbootstrap -n "__fish_seen_subcommand_from build"
complete -F pmbootstrap -n "__fish_seen_subcommand_from build" -s i -l ignore-depends  -d "only build and install makedepends from an APKBUILD, ignore the depends"
complete -F pmbootstrap -n "__fish_seen_subcommand_from build" -s n -l no-depends      -d "never build dependencies, abort instead"
complete -F pmbootstrap -n "__fish_seen_subcommand_from build"      -l force           -d "build even if not necessary"
complete -F pmbootstrap -n "__fish_seen_subcommand_from build"      -l strict          -d "zap and install only required depends when building"
complete -F pmbootstrap -n "__fish_seen_subcommand_from build"      -l go-mod-cache    -d "Use GOMODCACHE in work dir to cache Go deps"
complete -F pmbootstrap -n "__fish_seen_subcommand_from build"      -l no-go-mod-cache -d "don't set GOMODCACHE"
complete -F pmbootstrap -n "__fish_seen_subcommand_from build"      -l envkernel       -d "Create an apk package from the build output of a kernel compiled locally on the host or with envkernel.sh."
complete -F pmbootstrap -n "__fish_seen_subcommand_from build"      -l src  -r         -d "override source used to build the package with a local folder"
complete -F pmbootstrap -n "__fish_seen_subcommand_from build"      -l arch -ra $arch  -d "CPU architecture to build for"

###deviceinfo_parse
complete -F pmbootstrap -n "__fish_seen_subcommand_from deviceinfo_parse"
complete -f pmbootstrap -n "__fish_seen_subcommand_from deviceinfo_parse" -l kernel -r -d "the kernel to select"

#TODO: add package name completion
###apkbuild_parse
complete -F pmbootstrap -n "__fish_seen_subcommand_from apkbuild_parse"

#TODO: add package name completion
###apkindex_parse
complete -F pmbootstrap -n "__fish_seen_subcommand_from apkindex_parse"

###config
set -l config_names\
    aports\
    auto_zap_misconfigured_chroots\
    boot_size\
    build_default_device_arch\
    build_pkgs_on_install\
    ccache_size\
    device\
    extra_packages\
    extra_space\
    hostname\
    is_default_channel\
    jobs\
    kernel\
    keymap\
    locale\
    mirrors.alpine\
    mirrors.alpine_custom\
    mirrors.pmaports\
    mirrors.pmaports_custom\
    mirrors.systemd\
    mirrors.systemd_custom\
    providers\
    qemu_redir_stdio\
    ssh_key_glob\
    ssh_keys\
    sudo_timer\
    systemd\
    timezone\
    ui\
    ui_extras\
    user\
    work
;
complete -f pmbootstrap -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from $config_names" -a "$config_names" -r
complete -f pmbootstrap -n "__fish_seen_subcommand_from config; and not __fish_seen_subcommand_from --reset" -s r -l reset -d "Reset config options to it's default."

###bootimg_analyze
complete -F pmbootstrap -n "__fish_seen_subcommand_from bootimg_analyze"
complete -f pmbootstrap -n "__fish_seen_subcommand_from bootimg_analyze" -s f -l force -d "analyze the file even if it seems to be invalid"

#below subcommands don't have any parameters or subcommands available
#shutdown
#index
#work_migrate
#netboot
#status
#pull
