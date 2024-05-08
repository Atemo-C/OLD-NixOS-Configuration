{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		xfce.xfburn
		cdparanoia
		cdrdao
		cdrtools
		dvdplusrwtools
		transcode
		vcdimager
	];

}
