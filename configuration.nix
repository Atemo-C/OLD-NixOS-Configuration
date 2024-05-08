# Single-user, desktop NixOS configuration, based on and running on the 23.11 release.
# The configuration is split into various modules in the `/etc/nixos` directory.
# Most options that have not been changed from their default are not present in these modules.

# The following commands need to be ran once the system is installed, before applying this configuration:
#	sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
#	sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable
#	sudo nix-channel --update

# If Flatpaks are being used, also run these commands once Flatpak is enabled:
#	flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#	flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Help is available in:
# • The configuration.nix(5) man page
# • The on-device manual, by running the `nixos-help` command
# • The online manual at https://nixos.org/manual/nixos/stable/index.html
# • The official NixOS Wiki at https://wiki.nixos.org/

# A searchable list of available packages for NixOS can be found here:
# https://search.nixos.org/packages

# The command to locally search for packages is:
#	nix search package
# Where "package" is to be replaced with the desired name.

# A searcheable list of available options for NixOS can be found here:
# https://search.nixos.org/options

{ config, lib, pkgs, ... }: {

	# Imports. Comment an import with # to exclude it.
	# Each module can be edited to fit your needs.
	imports = [

		# Hardware configuration file
		./hardware-configuration.nix

		# Home Manager
		<home-manager/nixos>

		# Configuration for some drivers, devices, etc.
		# Selecting a GPU driver is done by uncommenting it. Do not mix incompatible drivers.
		# Each driver can be configured in their respective module.
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
		./Settings/Nix-packages.nix
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
		./Functionalities/AppImage.nix
		./Functionalities/Flatpak.nix
		./Functionalities/Hyprland-desktop.nix
		./Functionalities/Home-Manager.nix
		./Functionalities/DConf.nix
		./Functionalities/Virtualisation.nix
	];
}
