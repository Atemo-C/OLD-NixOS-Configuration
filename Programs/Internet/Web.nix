{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		librewolf
		tor-browser-bundle-bin
	];

}
