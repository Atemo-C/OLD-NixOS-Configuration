{ config, lib, pkgs, ... }: {

	boot = {
		extraModulePackages = [ config.boot.kernelPackages.v4l2loopback ];
		initrd.kernelModules = [ "v4l2loopback" ];
	};

	environment.systemPackages = with pkgs; [ v4l-utils ];

}
