{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# Video playing, recording, and editing
		mpv
		freetube
		libsForQt5.kdenlive
		(pkgs.wrapOBS {
			plugins = with pkgs.obs-studio-plugins; [
				wlrobs
			];
		})

		# Video utilities
		ffmpeg_6-full
		libde265
		unstable.xwaylandvideobridge
	];

	# MPV plugins
	nixpkgs.overlays = with pkgs; [
		(self: super: {
			mpv = super.mpv.override {
				scripts = [
					self.mpvScripts.mpris
					self.mpvScripts.sponsorblock
				];
			};
		})
	];

}
