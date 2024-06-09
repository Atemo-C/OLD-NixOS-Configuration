{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		# Archiving formats support and utilties
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

		# Graphical archiving utilties
		gnome.file-roller
	];

}
