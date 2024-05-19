{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		# Games and emulators
		desmume
		unstable.minetest
		superTuxKart

		# Game launchers
		prismlauncher

		# Gaming utilities
		ferium
		jstest-gtk

		# Java
		jdk
	];

	boot.kernel.sysctl = { "vm.max_map_count" = 2147483642; };

	programs = {
		gamemode = {
			enable = true;
			settings.general = { inhibit_screensaver = 0; };
		};
		gamescope = {
			enable = true;
			package = pkgs.unstable.gamescope;
		};
		steam = {
			dedicatedServer.openFirewall = false;
			remotePlay.openFirewall = false;
			enable = true;
		};
	};

	# Mostly for emulators
	security.pam.loginLimits = [
		{
			domain = "*";
			type = "hard";
			item = "memlock";
			value = "unlimited";
		}
		{
			domain = "*";
			type = "soft";
			item = "memlock";
			value = "unlimited";
		}
	];

}
