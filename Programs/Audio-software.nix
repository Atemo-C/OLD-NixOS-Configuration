{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		# Audio playing
		audacious

		# Audio editing
		audacity
		easytag

		# Audio settings
		pavucontrol
		qpwgraph

		# Audio tools
		alsa-utils
		playerctl
		unstable.easyeffects
	];

}
