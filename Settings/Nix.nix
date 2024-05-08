{ config, lib, pkgs, ... }: {

	nix.settings = {
		auto-optimise-store = true;
		trusted-users = [
			"root"
			"your-user-here"
		];
	};

	system = {
		copySystemConfiguration = true;
		stateVersion = "23.11";
	};

}
