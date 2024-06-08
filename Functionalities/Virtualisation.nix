{ config, lib, pkgs, ... }: {

	programs.virt-manager.enable = true;

	home-manager.users.usernamehere.dconf.settings = {
		"org/virt-manager/virt-manager/connections" = {
			autoconnect = [ "qemu:///system" ];
			uris = [ "qemu:///system" ];
		};
	};

	virtualisation = {
		libvirtd.enable = true;
#		virtualbox.host = { # Warning: Takes a long time to compile.
#			enable = true;
#			enableExtensionPack = true;
#			package = pkgs.unstable.virtualbox;
		};
#		docker = {
#			enable = true;
#			rootless = {
#				enable = true;
#				setSocketVariable = true;
#			};
#		};
	};

	users.extraGroups.vboxusers.members = [ "usernamehere" ];

}
