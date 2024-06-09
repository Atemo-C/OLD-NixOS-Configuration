{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		# Audio settings
		pavucontrol
		unstable.qpwgraph

		# Audio tools
		alsa-utils
		unstable.easyeffects
	];

}
