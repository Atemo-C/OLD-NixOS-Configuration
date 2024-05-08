{ config, lib, pkgs, ... }: {

	hardware.opentabletdriver = {
		blacklistedKernelModules = [
			"hid-uclogic"
			"wacom"
		];
		enable = true;
	};

}
