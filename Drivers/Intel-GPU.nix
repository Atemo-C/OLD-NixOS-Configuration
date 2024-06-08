{ config, lib, pkgs, ... }: {

	hardware.opengl.extraPackages = with pkgs; [
		intel-compute-runtime
		intel-media-driver # For Broadwell (2015) or newer processors. LIBVA_DRIVER_NAME=iHD
#		intel-vaapi-driver # For older processors. LIBVA_DRIVER_NAME=i965
	];

#	environment.sessionVariables = { LIBVA_DRIVER_NAME = "iHD"; }; # Optionally, set the environment variable

	services.xserver = {
		videoDrivers = [
			"modesetting"
#			"intel"
		];
#		deviceSection = ''
#			Option "DRI" "2"
#			Option "TearFree" "true"
#		'';
	};

}
