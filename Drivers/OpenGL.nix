{ config, lib, pkgs, ... }: {

	hardware.opengl = {
		driSupport = true;
		driSupport32Bit = true;
		enable = true;
	};

}
