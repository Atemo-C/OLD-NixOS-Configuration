{ config, lib, pkgs, ... }: {

	xservices = {
		xserver.videoDrivers = [ "qxl" ];
		qemuGuest.enable = true;
	};

}

# This is untested.
