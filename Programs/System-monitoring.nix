{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# Monitoring
		btop
		cpu-x
		lm_sensors
		unstable.mission-center

		# Informations
		neofetch
		lshw

		# Testing and other tools
		mprime
		vulkan-tools
		mesa-demos
	];

}
