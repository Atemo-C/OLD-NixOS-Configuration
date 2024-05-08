{ config, lib, pkgs, ... }: {

	nixpkgs.config = {
		allowUnfree = true;
		packageOverrides = pkgs: {
			unstable = import <nixos-unstable> {
				config = config.nixpkgs.config;
			};
			nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz" ) {
			inherit pkgs;
			};
		};
	};

}
