{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		amfora
		lagrange
	];

}
