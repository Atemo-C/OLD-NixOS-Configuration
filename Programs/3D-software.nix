{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		blender
		openscad
		sweethome3d.application
	];

}
