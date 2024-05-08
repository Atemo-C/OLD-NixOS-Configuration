{ config, lib, pkgs, ... }: {

	home-manager.users.usernamehere = {
		home.stateVersion = "23.11";
		dconf.enable = true;
	};

}
