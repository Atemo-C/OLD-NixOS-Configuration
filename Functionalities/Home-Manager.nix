{ config, lib, pkgs, ... }: {

	home-manager.users.youruserhere = {
		home.stateVersion = "23.11";
		dconf.enable = true;
	};

}
