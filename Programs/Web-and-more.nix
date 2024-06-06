{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# Web browsing
		librewolf
		tor-browser-bundle-bin

		# Gemini browsing
		amfora
		lagrange

		# Downloading
		unstable.yt-dlp
		qbittorrent
	];

}
