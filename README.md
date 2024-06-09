# General information
This is an almost identical version of the NixOS configuration that I use.

Elements such as usernames are generalized; These kinds of values needs to be defined before using the configuration. \
Reading and editing (if necessary) every file before using this configuration is highly recommended.

The configuration is split into various nix modules that are imported in `configuration.nix`. \
[`configuration.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/configuration.nix) \
We can comment/uncomment modules to enable/disable them.
&nbsp; \
&nbsp;

# State version
This is very important. \
In the `Nix.nix` file, you will find the `stateVersion = "23.11";` value. \
[`Nix.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Settings/Nix.nix) \
The version should only be changed if you have installed NixOS from another version. \
You should **never** need to change it afterwards, unless you re-install from a newer version. \
For more information, please read more here. \
[NixOS options - system.stateVersion](https://search.nixos.org/options?channel=unstable&show=system.stateVersion&from=0&size=50&sort=relevance&type=packages&query=system.stateVersion)
&nbsp; \
&nbsp;

# Enabling functionalities before use
Using this configuration on a clean installation of NixOS will result in errors. \
This is because Home Manager and unstable packages are defined but not present on the system. \
If we do not use one or all of them, we can safely disable them. \
The following section will explain how to add them, as well as where they can be enabled/disabled. \
It will also show some other functionalities that can be enabled/disabled.
&nbsp; \
&nbsp;
## Home Manager
Home Manager can be enabled/disabled by un/commenting the `<home-manager/nixos>` import in `configuration.nix`. \
[`configuration.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/configuration.nix)

It can be configured in the `Home-Manager.nix` module. \
[`Home-Manager.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Functionalities/Home-Manager.nix)

- Run this command to add the Home Manager channel.
```shell
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz home-manager
```

- Run this command to update the channels.
```shell
sudo nix-channel --update
```
&nbsp;
## Unfree packages
Unfree packages can be enabled/disabled by un/commenting the `Nixpkgs-unfree.nix` import in `configuration.nix`. \
[`configuration.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/configuration.nix)

They can be configured in the `Nixpkgs-unfree.nix` module. \
[`Nixpkgs-unfree.nix`](https://github.com/Atemo-C/NixOS-Configuration/main/Functionalities/Nixpkgs-unfree.nix)
&nbsp; \
&nbsp;
## “Unstable” packages
Unstable packages can be enabled/disabled by un/commenting the `Nixpkgs-unstable.nix` import in `configuration.nix`. \
[`configuration.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/configuration.nix)

They can be configured in the `Nixpkgs-unstable.nix` module. \
[`Nixpkgs-unstable.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Functionalities/Nixpkgs-unstable.nix)

- Run this command to add the unstable channel.
```shell
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable
```

- Run this command to update the channels.
```shell
sudo nix-channel --update
```

To use an unstable package, replace `pkgs` with `pkgs.unstable` in the relevant places.
&nbsp; \
&nbsp;
### Flatpak packages and Flathub
Use of Flatpak packages can be enabled/disabled by un/commenting the `Flatpak.nix` import in `configuration.nix`. \
[`configuration.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/configuration.nix)

They can be configured in the `Flatpak.nix` module. \
[`Flatpak.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Functionalities/Flatpak.nix)

- Run this command to add the Flathub repository for the entire system.
```shell
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

- Run this command to add the Flathub repository for the current user.
```shell
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
&nbsp;
### AppImages
Support for AppImages can be enabled/disabled by commenting the `AppImage.nix` import in `configuration.nix`. \
[`configuration.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/configuration.nix)

They can be configured in the `AppImages.nix` module. \
[`AppImages.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Functionalities/AppImages.nix)
&nbsp; \
&nbsp;
### Hyprland desktop
The main module contains more the Hyprland Wayland compositor and various other utilities.

The Hyprland desktop can be enabled/disabled by un/commenting the `Hyprland-deskop.nix` import in `configuration.nix`. \
[`configuration.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/configuration.nix)

It can be configured in the `Hyprland-desktop.nix` module. \
[`Hyprland-desktop.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Functionalities/Hyprland-desktop.nix)
&nbsp; \
&nbsp;
# Use cases and other functionalities
## Targeted use case
- Single user
- Personal computing
- Desktops and laptops
&nbsp; \
&nbsp;
## Not yet implemented or tested, including but not limited to
- Legacy BIOS
- Secure Boot
- Accessibility
- Touchscreen
- NVIDIA PRIME
- Remote desktop
- Snap packaging system
- Use in most virtual machines (with Hyprland)
- Computers with:
	- A non-x86_64 (AMD64) CPU architecture
	- No adequate GPU acceleration
	- Less than 4 GiB of RAM (Swap might be heavily used with less)
	- Less than 128 GiB of storage (Some Nix storage optimizations are already enabled)
&nbsp; \
&nbsp;
# Cerdits
The ST Flexipatch project. \
[ST Flexipatch GitHub](https://github.com/bakkeby/st-flexipatch)

The version I use can be found in this directory. \
[`./Programs/ST/`](https://github.com/Atemo-C/NixOS-Configuration/tree/main/Programs/ST)

### *The license used by this repository does not apply to ST Flexipatch, as it has its own license.*
&nbsp;
## Other NixOS resources
Help is available in:
- The configuration.nix(5) man page
- The on-device manual by running the `nixos-help` command
- The online manual \
	[Online manual](https://nixos.org/manual/nixos/stable/index.html)
- The NixOS Wiki \
  	[NixOS Wiki](https://wiki.nixos.org)

A searchable list of available packages for NixOS can be found here. \
[NixOS package search](https://search.nixos.org/packages) \
Alternatively, we can use `nix search` in a terminal.

A searchable list of available options for NixOS can be found here. \
[NixOS options search](https://search.nixos.org/options)
