{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [ appimage-run ];

}
