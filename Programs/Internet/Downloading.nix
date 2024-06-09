{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [
		unstable.yt-dlp
		qbittorrent
	];

}
