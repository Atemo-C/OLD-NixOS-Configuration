{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# Monitoring
		btop
		cpu-x
		lm_sensors

		# Informations
		neofetch
		lshw

		# Testing and other tools
		mprime
		vulkan-tools
		mesa-demos
	];

}
