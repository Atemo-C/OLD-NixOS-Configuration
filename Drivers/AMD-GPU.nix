{ config, lib, pkgs, ... }: {

	boot.initrd.kernelModules = [ "amd" ];
	hardware.opengl.extraPackages = with pkgs; [ rocmPackages.clr.icd ];
	services.xserver.videoDrivers = [ "amdgpu" ];

}
