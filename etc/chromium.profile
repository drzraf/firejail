# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/chromium.local

# Chromium browser profile
noblacklist ~/.config/chromium
noblacklist ~/.cache/chromium
noblacklist ~/.pki
# specific to Arch
noblacklist ~/.config/chromium-flags.conf
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
# chromium is distributed with a perl script on Arch
# include /etc/firejail/disable-devel.inc

whitelist ${DOWNLOADS}
mkdir ~/.config/chromium
whitelist ~/.config/chromium
mkdir ~/.cache/chromium
whitelist ~/.cache/chromium
mkdir ~/.pki
whitelist ~/.pki
whitelist ~/.config/chromium-flags.conf

include /etc/firejail/whitelist-common.inc

caps.keep sys_chroot,sys_admin
#ipc-namespace
netfilter
nogroups
shell none

private-dev
#private-tmp - problems with multiple browser sessions
#disable-mnt

noexec ${HOME}
noexec /tmp
