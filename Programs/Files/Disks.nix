{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		# Disk utilities
		gnome.gnome-disk-utility
		gparted

		# Terminal tools
		hdparm

		# Bootable medium management
		ventoy-full
	];

	services = {
		smartd.enable = true;
		udisks2.enable = true;
	};

}
