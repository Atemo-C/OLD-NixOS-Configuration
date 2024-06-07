{ config, lib, pkgs, ... }: {

	boot.initrd.kernelModules = [ "amd" ];

#	environment.variables = {
#		AMD_VULKAN_ICD = "RADV";
#		VK_ICD_FILENAMES = "/run/opengl-driver/share/vulkan/icd.d/radeon_icd.x86_64.json";
#		ROC_ENABLE_PRE_VEGA = "1";
#	};

	hardware.opengl = {
		extraPackages = with pkgs; [
			rocmPackages.clr.icd
#			amdvlk
		];
#		extraPackages32 = with pkgs; [
#			driversi686Linux.amdvlk
#		];
	};

	services.xserver.videoDrivers = [ "amdgpu" ];

}
