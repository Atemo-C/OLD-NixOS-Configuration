{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# Monitoring
		btop
		cpu-x
		lm_sensors
		unstable.mission-center

		# Informations
		fastfetch
		lshw

		# Testing and other tools
		mprime
		vulkan-tools
		mesa-demos
	];

}
