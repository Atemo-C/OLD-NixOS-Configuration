{ config, lib, pkgs, ... }: {

	programs = {
		thunar = {
			enable = true;
			plugins = with pkgs.xfce; [
				thunar-archive-plugin
				thunar-volman
				thunar-media-tags-plugin
			];
		};
	};

	environment.systemPackages = with pkgs; [
		# Thumbnailing
		ffmpegthumbnailer
		webp-pixbuf-loader
		poppler
		freetype
		libgsf
		nufraw-thumbnailer
		gnome-epub-thumbnailer
		kdePackages.kimageformats

		# XFCE
		xfce.exo
	];

	services = {
		gvfs.enable = true;
		tumbler.enable = true;
	};

}
