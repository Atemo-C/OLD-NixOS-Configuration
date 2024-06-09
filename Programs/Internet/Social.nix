{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		element-desktop
		unstable.vesktop
	];

}
