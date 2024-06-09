{ config, lib, pkgs, ... }: {

	nixpkgs.config.packageOverrides = pkgs: {
		unstable = import <nixos-unstable> {
			config = config.nixpkgs.config;
		};
	};

}
