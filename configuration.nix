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
		./Programs/Text-editing.nix
		./Programs/Office.nix # Includes E-mails
		./Programs/Audio-software.nix
		./Programs/Video-software.nix
		./Programs/GStreamer.nix
		./Programs/CD-DVD-utilities.nix
		./Programs/Image-software.nix
		./Programs/File-management.nix # Inludes a bunch of utilities
		./Programs/Android-tools.nix
		./Programs/3D-software.nix
		./Programs/Gaming.nix # Includes Java
		./Programs/Input-utilities.nix
		./Programs/Terminals-and-utilities.nix
		./Programs/Desktop-utilities.nix
		./Programs/System-monitoring.nix
		./Programs/Communication.nix
		./Programs/Web-and-more.nix

		# Functionalities
		./Functionalities/Hyprland-desktop.nix
		./Functionalities/Home-Manager.nix
		./Functionalities/Packages/AppImage.nix
		./Functionalities/Packages/Flatpak.nix
		./Functinalitiies/Packages/Nixpkgs-unfree.nix
		./Functinalitiies/Packages/Nixpkgs-unstable.nix
#		./Functionalities/Virtualisation/Docker.nix
		./Functionalities/Virtualisation/Virt-manager.nix
#		./Functionalities/Virtualisation/Virtualbox.nix
	];

}
