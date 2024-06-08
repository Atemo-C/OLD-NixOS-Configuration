{ config, lib, pkgs, ... }: {

	boot.loader = {
		efi.canTouchEfiVariables = true;
		systemd-boot = {
			configurationLimit = 15;
			enable = true;
			memtest86.enable = true;
		};
		timeout = 0;
	};

}
