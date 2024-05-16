{ config, lib, pkgs, ... }: {

	users.users.usernamehere = {
		isNormalUser = true;
		description = "Your fancy name here";
#		home = "/Your/desired/home/directory/";
		extraGroups = [
			"wheel"
			"plugdev"
			"networkmanager"
			"video"
			"render"
			"input"
			"disk"
			"adbusers"
			"docker"
			"libvirtd"
			"scanner"
			"lp"
			"vboxusers"
			"storage"
		];
		shell = pkgs.fish;
	};

}
