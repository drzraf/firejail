# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/gnome-clocks.local

# gnome-clocks profile
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
no3d
nogroups
nonewprivs
noroot
novideo
protocol unix,inet,inet6
seccomp
netfilter
shell none
tracelog

# private-bin gnome-clocks
private-tmp
private-dev
# private-etc fonts
disable-mnt

noexec ${HOME}
noexec /tmp
