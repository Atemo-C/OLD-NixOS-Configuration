{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs.gst_all_1; [
		gstreamer
		gst-libav
		gst-vaapi
		gst-plugins-bad
		gst-plugins-ugly
		gst-plugins-good
		gst-plugins-base
		gst-plugins-viperfx
	];

}
