{ config, lib, pkgs, ... }: {

	hardware.opentabletdriver = {
		daemon.enable = true;
		enable = true;
	};

}
