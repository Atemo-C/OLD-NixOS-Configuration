{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		# Archive formats support
		atool
		cpio
		lha
		lrzip
		lzop
		p7zip
		unrar
		unar
		unshield
		unzip
		zip

		# Filesystem utilities
		dosfstools
		sysfsutils

		# Terminal utilities
		fd
		lsd
		trashy

		# Graphical utilities
		xfce.exo
		gnome.file-roller

		# Disk utilities
		gnome.gnome-disk-utility
		gparted
		ncdu
		ventoy-full
		hdparm

		# Other utilities
		ffmpegthumbnailer
		shared-mime-info
		desktop-file-utils
	];

	# Thunar file manager.
	programs = {
		thunar = {
			enable = true;
			plugins = with pkgs.xfce; [
				thunar-archive-plugin
				thunar-volman
				thunar-media-tags-plugin
			];
		};
		xfconf.enable = true;
	};

	services = {
		tumbler.enable = true;
		gvfs.enable = true;
		smartd.enable = true;
		udisks2.enable = true;
	};

}

# To make .local/shre/applications/*.desktop files work properly, run these commands:
#	mkdir -p .local/share/applications
#	desktop-file-utils --run "update-desktop-database -v ~/.local/share/applications"
