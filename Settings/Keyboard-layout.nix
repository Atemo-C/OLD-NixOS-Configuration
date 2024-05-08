{ config, lib, pkgs, ... }: {

	services.xserver = {
		layout = "fr";
		xkbVariant = "";
	};

	console.keyMap = "fr";

}
