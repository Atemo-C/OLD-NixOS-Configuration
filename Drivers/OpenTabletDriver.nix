{ config, lib, pkgs, ... }: {

	hardware.opentabletdriver = {
		blacklistedKernelModules = [
			"hid-uclogic"
			"wacom"
		];
		daemon.enable = true;
		enable = true;
	};

}
