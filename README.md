# Atemo Cayaku's NixOS configuration

---

## General information

### What is this?
This is an almost identical version of the NixOS configuration that I use.

### Generalization
Elements such as usernames are generalized. It is recommended to look carefully at every single file and replace the desired values.

### Split
The configuration is split into various `.nix` modules, that are then imported in [`configuration.nix`](https://github.com/Atemo-C/NixOS-Configuration/blob/main/configuration.nix).

---

## Included extra functionalities
### [Home Manager](https://github.com/nix-community/home-manager)
To be able to use it, on a clean NixOS install, one must run these commands once:
```shell
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz home-manager
sudo nix-channel --update
```
Replace `24.05` by the desired version.
The needed configuration to use it is already present [here](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Functionalities/Home-Manager.nix).
##
### "Unstable" packages
To be able to use packages from the `unstable` branch on a stable system, on a clean NixOS install, one must run these commands once:
```shell
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable
sudo nix-channel --update
```
The needed configuration to use them is already present [here](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Settings/Nix-packages.nix).
Two examples of files where they are used can be found [here](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Programs/Image-software.nix) and [there](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Settings/Kernel.nix).
##
### [Flatpaks](https://www.flatpak.org/) (with [Flathub](https://flathub.org/))
Flatpaks are enabled [here](https://github.com/Atemo-C/NixOS-Configuration/blob/main/Functionalities/Flatpak.nix).
To include the Flathub repository, one must run this command once:
- For the entire system:
```shell
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
- For the current user
```shell
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

---

## Credits
The [ST Flexipatch](https://github.com/bakkeby/st-flexipatch) project. The version I use can be found in [here](https://github.com/Atemo-C/NixOS-Configuration/tree/main/Programs/ST). The license used by this repository does not apply to `ST`, as it has its own license.

---

## Targeted use case:
- Single user
- Personal computing
- Desktop and laptops

---

## Not yet implemented or tested, including but not limited to:
- Bluetooth support
- Legacy BIOS support
- Secure Boot support
- Accessibility tools
- Touchscreen support
- NVIDIA PRIME support
- AMD ROCM support
- Remote desktop functionality
- Snap packaging system
- Virtual machine support
- Computer with:
  - A non-x86_64 (AMD64) architecture
  - No adequate GPU acceleration
  - Less than 4 GiB of random access memory
  - Less than 128GiB of storage
