{ config, lib, pkgs, ... }: {

	environment = {
		systemPackages = with pkgs; [
			# Terminal text editor
			unstable.micro

			# Spell checking
			aspell
			aspellDicts.uk
			aspellDicts.fr
			aspellDicts.en
			aspellDicts.eo
			hunspell
			hunspellDicts.en_US
			hunspellDicts.fr-any

			# Special characters
			emoji-picker

			# Clipboard
			clipman
			wl-clipboard
		];
		variables = { EDITOR = "micro"; };
	};

	# Disabling the nano text editor installed by default
	programs.nano.enable = false;

}
