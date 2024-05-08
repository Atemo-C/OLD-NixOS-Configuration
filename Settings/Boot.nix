{ config, lib, pkgs, ... }: {

	boot.loader = {
		efi.canTouchEfiVariables = true;
		systemd-boot = {
			configurationLimit = 20;
			consoleMode = "max";
			enable = true;
			memtest86.enable = true;
		};
		timeout = 5;
	};

}
