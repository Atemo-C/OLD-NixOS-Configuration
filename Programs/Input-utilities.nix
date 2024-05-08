{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		evhz
		usbutils
		evsieve
		unstable.xclicker
	];

	# Input remapper, may be removed in the future
	services = {
		dbus.packages = with pkgs.unstable; [ input-remapper ];
		input-remapper = {
			enable = true;
			package = pkgs.unstable.input-remapper;
		};
	};

}
