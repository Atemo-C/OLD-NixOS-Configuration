{ config, lib, pkgs, ... }: {

	environment = {
		systemPackages = with pkgs; [
				# Wallpaper
				unstable.hyprpaper

				# Notifications
				dunst
				libnotify

				# Menus and scripts
				gnome.zenity
				tofi

				# Brightness control
				brightnessctl

				# Policykit agent
				lxqt.lxqt-policykit

				# Bar
				unstable.waybar
		];
		sessionVariables.NIXOS_OZONE_WL = "1";
	};

	# Hyprland Wayland compositor
	home-manager.users.usernamehere.wayland.windowManager.hyprland = {
		enable = true;
		package = pkgs.unstable.hyprland;
		settings.source = [
			"$HOME/.config/hypr/Hyprland/Animations.conf"
			"$HOME/.config/hypr/Hyprland/Autostart.conf"
			"$HOME/.config/hypr/Hyprland/Bindings.conf"
			"$HOME/.config/hypr/Hyprland/Decoration.conf"
			"$HOME/.config/hypr/Hyprland/Environment-variables.conf"
			"$HOME/.config/hypr/Hyprland/General.conf"
			"$HOME/.config/hypr/Hyprland/Global-shortcuts.conf"
			"$HOME/.config/hypr/Hyprland/Input.conf"
			"$HOME/.config/hypr/Hyprland/Layout.conf"
			"$HOME/.config/hypr/Hyprland/Miscellaneous.conf"
			"$HOME/.config/hypr/Hyprland/Monitor.conf"
			"$HOME/.config/hypr/Hyprland/Window-rules.conf"
		];
	};

	# XDG portals shenanigans
	xdg.portal = {
		enable = true;
		extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
		configPackages = [
			pkgs.unstable.xdg-desktop-portal-hyprland
			pkgs.unstable.xdg-desktop-portal-gtk
		];
	};

}
