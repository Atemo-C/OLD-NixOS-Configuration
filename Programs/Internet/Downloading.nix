{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		gallery-dl
		qbittorrent
		unstable.yt-dlp
	];

}
