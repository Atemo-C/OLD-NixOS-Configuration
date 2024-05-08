{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [ element-desktop-wayland ];

}
