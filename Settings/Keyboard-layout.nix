{ config, lib, pkgs, ... }: {

	services.xserver.xkb = {
		layout = "fr";
		variant = "";
	};

	console.keyMap = "fr";

}
