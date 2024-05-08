{ config, lib, pkgs, ... }: {

	hardware.opengl.extraPackages = with pkgs; [
		intel-compute-runtime
		intel-media-driver # Modern driver
#		intel-vaapi-driver # Old i965 driver
	];

	services.xserver.videoDrivers = [ "modesetting" ];

}
