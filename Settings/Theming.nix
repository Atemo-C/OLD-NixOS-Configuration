{ config, lib, pkgs, ... }: {

	environment = {
		sessionVariables = {
			ADW_DEBUG_COLOR_SCHEME = "prefer-dark";
			HDY_DEBUG_COLOR_SCHEME = "prefer-dark";
		};
		systemPackages = with pkgs; [ flat-remix-icon-theme ];
	};

	home-manager.users.your-user-here = {
		home.pointerCursor = {
			gtk.enable = true;
			package = pkgs.bibata-cursors;
			name = "Bibata-Modern-Ice";
			size = 16;
		};
		gtk = {
			enable = true;
			cursorTheme = {
				package = pkgs.bibata-cursors;
				name = "Bibata-Modern-Ice";
				size = 16;
			};
			iconTheme = {
				package = pkgs.flat-remix-icon-theme;
				name = "Flat-Remix-Blue-Dark";
			};
			theme = {
				package = pkgs.unstable.adw-gtk3;
				name = "adw-gtk3-dark";
			};
			font = {
				package = pkgs.ubuntu_font_family;
				name = "Ubuntu";
				size = 10;
			};
			gtk2.extraConfig = "gtk-enable-mnemonics = 0";
			gtk3.extraConfig = {
				gtk-button-images = 1;
				gtk-menu-images = 1;
				gtk-decoration-layout = "";
			};
			gtk4.extraConfig = {
				gtk-button-images = 1;
				gtk-menu-images = 1;
				gtk-decoration-layout = "";
			};
		};
		qt = {
			enable = true;
			style = {
				package = pkgs.adwaita-qt;
				name = "adwaita-dark";
			};
		};
	};

	qt = {
		enable = true;
		style = "adwaita-dark";
	};

}
