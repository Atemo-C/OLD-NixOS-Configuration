{ config, lib, pkgs, ... }: {

	nix.settings = {
		auto-optimise-store = true;
		trusted-users = [
			"root"
			"usernamehere"
		];
	};

	system = {
		copySystemConfiguration = true;
		stateVersion = "23.11";
	};

}
