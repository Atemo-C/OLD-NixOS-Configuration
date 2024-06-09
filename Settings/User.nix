{ config, lib, pkgs, ... }: {

	users.users.atemo = {
		isNormalUser = true;
		description = "Atemo";
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
