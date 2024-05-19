{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		scrcpy
		gnirehtet
		libmtp
	];

	programs.adb.enable = true;

}
