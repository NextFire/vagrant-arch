PLIST_PATH := /Library/LaunchDaemons/com.vagrant.vagrant-vmware-utility.plist

all: up

launchctl-load:
	sudo launchctl load $(PLIST_PATH)

launchctl-unload:
	sudo launchctl unload $(PLIST_PATH)

up: launchctl-load
	vagrant up

suspend:
	vagrant suspend
	$(MAKE) launchctl-unload

halt:
	vagrant halt
	$(MAKE) launchctl-unload

destroy:
	vagrant destroy -f
	$(MAKE) launchctl-unload

.PHONY: all launchctl-load launchctl-unload up suspend halt destroy
