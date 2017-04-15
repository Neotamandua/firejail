# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/kodi.local

# Firejail profile for kodi
noblacklist ${HOME}/.kodi
mkdir ${HOME}/.kodi

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
shell none

private-dev
private-tmp

noexec ${HOME}
noexec /tmp
