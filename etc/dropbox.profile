# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/dropbox.local

# dropbox profile
noblacklist ~/.config/autostart
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

caps
nonewprivs
noroot
novideo
protocol unix,inet,inet6
seccomp

mkdir ~/Dropbox
whitelist ~/Dropbox
mkdir ~/.dropbox
whitelist ~/.dropbox
mkdir ~/.dropbox-dist
whitelist ~/.dropbox-dist

mkfile ~/.config/autostart/dropbox.desktop
whitelist ~/.config/autostart/dropbox.desktop
