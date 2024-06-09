{ config, lib, pkgs, ... }: {

	environment.systemPackages = with pkgs; [

		# Image and colour taking and viewing
		unstable.lxqt.lximage-qt
		unstable.hyprpicker
		unstable.hyprshot
		gcolor3

		# Additional image formats support
		libjxl
		dcmtk
		libwebp

		# Image editing and drawing
		gimp
		inkscape
		krita
		pixelorama
		imagemagick

		# Other image utilities
		unstable.upscayl
		unstable.oxipng
	];

}
