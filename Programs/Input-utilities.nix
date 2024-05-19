{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		evhz
		usbutils
		evsieve
		unstable.xclicker
	];

}
