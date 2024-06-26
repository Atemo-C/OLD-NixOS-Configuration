{ config, lib, pkgs, ... }: {

	fonts = {
		fontDir.enable = true;
		fontconfig = {
			cache32Bit = true;
			defaultFonts = {
				emoji = [
					"Noto Color Emoji"
				];
				monospace = [
					"UbuntuMono Nerd Font"
					"Noto Color Emoji"
					"Noto Emoji"
				];
				sansSerif = [
					"Ubuntu"
				];
				serif = [
					"Ubuntu"
				];
			};
			hinting.style = "slight";
		};
		packages = with pkgs; [
			(unstable.nerdfonts.override {
				fonts = [
					"Ubuntu"
					"UbuntuMono"
				];
			})
			ubuntu_font_family
			noto-fonts
			noto-fonts-cjk
			noto-fonts-color-emoji
		];
	};

}
