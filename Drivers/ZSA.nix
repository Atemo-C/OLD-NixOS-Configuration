{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		unstable.keymapp
		wally-cli
	];

	hardware.keyboard.zsa.enable = true;

}
