{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
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

			# Legacy X11 tools
			xorg.xrandr
			openbox
			killall
	];

	# Hyprland Wayland compositor and Waybar bar
	programs = {
		hyprland = {
			enable = true;
			package = pkgs.unstable.hyprland;
		};
		waybar = {
			enable = true;
			package = pkgs.unstable.waybar;
		};
	};

}
