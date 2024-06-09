{ config, lib, pkgs, ... }: {

	programs.virt-manager.enable = true;

	virtualisation.libvirtd.enable = true;

	home-manager.users.usernamehere.dconf.settings = {
		"org/virt-manager/virt-manager/connections" = {
			autoconnect = [ "qemu:///system" ];
			uris = [ "qemu:///system" ];
		};
	};

	users.users.usernamehere.extraGroups = [ "libvirtd" ];

}
