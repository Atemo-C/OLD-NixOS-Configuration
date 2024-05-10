{ config, lib, pkgs, ... }: {

	nixpkgs.config = {
		allowUnfree = true;
		packageOverrides = pkgs: {
			unstable = import <nixos-unstable> {
				config = config.nixpkgs.config;
			};
		};
	};

}
