{ config, lib, pkgs, ... }: {

	imports = [

		# Hardware configuration file
		./hardware-configuration.nix

		# Home Manager
		<home-manager/nixos>

		# Configuration for some drivers, devices, etc.
		./Drivers/OpenTabletDriver.nix
		./Drivers/V4L2.nix
		./Drivers/ZSA.nix
#		./Drivers/KVM-guest.nix
#		./Drivers/AMD-GPU.nix
#		./Drivers/Intel-GPU.nix
		./Drivers/NVIDIA-GPU.nix
#		./Drivers/Laptop.nix
		./Drivers/OpenGL.nix

		# Settings
#		./Settings/Bluetooth.nix
		./Settings/Boot.nix
		./Settings/Hostname.nix
		./Settings/Networking.nix
		./Settings/OpenSSH.nix
		./Settings/Time.nix
		./Settings/Locale.nix
		./Settings/Keyboard-layout.nix
		./Settings/User.nix
		./Settings/Nix.nix
		./Settings/Printing.nix
		./Settings/Additional-filesystems.nix
		./Settings/Fonts.nix
		./Settings/Kernel.nix
		./Settings/TTY.nix
		./Settings/Theming.nix
		./Settings/Shell.nix
		./Settings/BTRFS.nix
		./Settings/Fstrim.nix
		./Settings/Power-button.nix
		./Settings/Audio.nix
		./Settings/Fstab.nix

		# Programs
		./Programs/3D-software.nix
		./Programs/Android-tools.nix
		./Programs/Audio/Editing.nix
		./Programs/Audio/Music.nix
		./Programs/Audio/Utilities.nix
		./Programs/CD-DVD-utilities.nix
		./Programs/Desktop-utilities.nix
		./Programs/Files/Archiving.nix
		./Programs/Files/Disks.nix
		./Programs/Files/Thunar-and-thumbnailing.nix
		./Programs/Files/Utilities.nix
		./Programs/Gaming.nix # Includes Java
		./Programs/GStreamer.nix
		./Programs/Image-software.nix
		./Programs/Input-utilities.nix
		./Programs/Internet/Social.nix
		./Programs/Internet/Downloading.nix
		./Programs/Internet/Gemini.nix
		./Programs/Internet/Mail.nix
		./Programs/Internet/Web.nix
		./Programs/Legacy-X11-tools.nix
		./Programs/Office.nix
		./Programs/System-monitoring.nix
		./Programs/Terminals-and-utilities.nix
		./Programs/Text-editing.nix
		./Programs/Video-software.nix

		# Functionalities
		./Functionalities/Hyprland-desktop.nix
		./Functionalities/Home-Manager.nix
		./Functionalities/Packages/AppImage.nix
		./Functionalities/Packages/Flatpak.nix
		./Functionalities/Packages/Nixpkgs-unfree.nix
		./Functionalities/Packages/Nixpkgs-unstable.nix
#		./Functionalities/Virtualisation/Docker.nix
		./Functionalities/Virtualisation/Virt-manager.nix
#		./Functionalities/Virtualisation/Virtualbox.nix
	];

}
