{ config, lib, pkgs, ... }: {

	boot = {
		extraModulePackages = [ config.boot.kernelPackages.nvidia_x11_beta ];
		initrd.kernelModules = [ "nvidia" ];
		kernelParams = [ "nvidia.NVreg_PreserveVideoMemoryAllocations=1" ];
	};

	environment = {
#		sessionVariables = { WLR_NO_HARDWARE_CURSORS = "1"; };
		systemPackages = with pkgs; [
			linuxPackages.nvidia_x11
#			cudaPackages.cudatoolkit
		];
	};

	hardware.nvidia = {
		modesetting.enable = true;
		nvidiaSettings = true;
		package = config.boot.kernelPackages.nvidiaPackages.beta;
		powerManagement.enable = true;
#		prime = { # NVIDIA PRIME is untested.
#			amdgpuBusId = "PCI:42:0:0";
#			nvidiaBusId = "PCI:16:0:0";
#			offload = {
#				enable = true;
#				enableOffloadCmd = true;
#			};
#		};
	};

	services.xserver.videoDrivers = [
		"nvidia"
#		"nvidialegacy470"
#		"nvidialegacy390"
#		"nvidialegacy340"
	];

}
