{ config, lib, pkgs, ... }: {

	hardware.opengl = {
		driSupport32Bit = true;
		enable = true;
	};

}
