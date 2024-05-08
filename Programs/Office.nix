{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# Document viewing and editing
		libreoffice-fresh
		cinnamon.xreader

		# E-mails
		thunderbird
	];

}
