{ config, lib, pkgs, ... }: {

	virtualisation.docker = {
		enable = true;
		rootless = {
			enable = true;
			setSocketVariable = true;
		};
	};

	users.users.usernamehere.extraGroups = [ "docker" ];

}
