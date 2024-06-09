{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		# Filesystem utilities
		dosfstools
		sysfsutils

		# Terminal utilities
		fd
		lsd
		trashy

		# Disk utilities
		ncdu

		# Other utilities
		shared-mime-info
		desktop-file-utils
	];

}

# To make .local/shre/applications/*.desktop files work properly, run these commands:
#	mkdir -p .local/share/applications
#	desktop-file-utils --run "update-desktop-database -v ~/.local/share/applications"
