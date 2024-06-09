{ config, lib, pkgs, ... }: {

	users.users.usernamehere = {
		isNormalUser = true;
		description = "User name here";
		extraGroups = [
			"wheel"
			"plugdev"
			"networkmanager"
			"video"
			"render"
			"input"
			"disk"
			"adbusers"
			"scanner"
			"lp"
			"storage"
		];
		shell = pkgs.fish;
	};

}
