{ config, lib, pkgs, ... }: {

	services.logind.extraConfig = ''
		HandlePowerKey=ignore
	'';

}
