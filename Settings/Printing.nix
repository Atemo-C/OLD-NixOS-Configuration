{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [ gnome.simple-scan ];

	services = {
		avahi = {
			enable = true;
			nssmdns = true;
			openFirewall = true;
		};
		printing = {
			enable = true;
			drivers = with pkgs; [ hplip ];
		};
	};

	hardware.sane = {
		enable = true;
		extraBackends = with pkgs; [ hplipWithPlugin ];
		disabledDefaultBackends = [ "escl" ];
	};

}
