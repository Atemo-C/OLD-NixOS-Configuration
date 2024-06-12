{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# ST terminal emulator
		st

		# Various terminal utilities and eessentials
		bat
		calcurse
		devour
		dash
		wget
		git
		gh
		tldr
		parralel
	];

	# ST terminal emulator patching
	nixpkgs.overlays = with pkgs; [
		(final: prev: {
			st = prev.st.overrideAttrs (
				old: {
					src = /etc/nixos/Programs/ST ;
				}
			);
		})
	];

}
