{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		xorg.xrandr
		openbox
		killall
		xwayland
	];

}
