{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# Terminal emulators
		alacritty
		lxterminal

		# Various terminal utilities and eessentials
		bat
		calcurse
		devour
		dash
		wget
		git
		gh
	];

}
