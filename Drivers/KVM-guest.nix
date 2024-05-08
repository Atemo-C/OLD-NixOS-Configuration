{ config, lib, pkgs, ... }: {

	services = {
		xserver.videoDrivers = [ "qxl" ];
		qemuGuest.enable = true;
	};

}

# This is untested.
