# vagrant-arch

Personal configuration to setup a basic Arch Linux KDE desktop on VMware Fusion with Vagrant.

```sh
brew install --cask vagrant vmware-fusion vagrant-vmware-utility
vagrant plugin install vagrant-vmware-desktop
vagrant up --provider vmware_desktop
# ...
# Session: Plasma (X11)
# Auth: vagrant/vagrant
```
