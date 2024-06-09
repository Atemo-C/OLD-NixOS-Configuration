{ config, lib, pkgs, ... }: {

	virtualisation.virtualbox.host = {
		enable = true;
		enableExtensionPack = true;
		package = pkgs.unstable.virtualbox; # Takes a long time to compile
	};

	users = {
		extraGroups.vboxusers.members = [ "usernamehere" ];
		users.usernamehere.extraGroups = [ "vboxusers" ];
	}

}
