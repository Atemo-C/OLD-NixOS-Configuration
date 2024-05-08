{ config, lib, pkgs, ... }: {

environment.systemPackages = with pkgs; [
		gnome.gnome-clocks
		galculator
	];

}
