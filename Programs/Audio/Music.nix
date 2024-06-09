{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		# Music player
		audacious

		# Tag editing
		easytag

		# Media control
		playerctl
	];

}
