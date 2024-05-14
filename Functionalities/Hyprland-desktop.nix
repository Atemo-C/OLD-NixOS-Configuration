{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
			# Wallpaper
			unstable.hyprpaper

			# Bar
			waybar

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

	programs.hyprland = {
		enable = true;
		package = pkgs.unstable.hyprland;
	};

}
