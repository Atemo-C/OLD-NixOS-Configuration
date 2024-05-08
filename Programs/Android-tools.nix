{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		scrcpy
		gnirehtet
		android-tools
		libmtp
	];

	programs.adb.enable = true;

}
