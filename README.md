# Atemo Cajaku's NixOS Configuration

Greetings. This is my NixOS configuration, or, rather, as close to the one I use on my system as possible. \
It is provided as-is, and is meant for my personal use. Do not expect support from me if you encounter issues using it. \
I am a relatively new NixOS user, and a simple one at that, so my understanding of the Nix language and the Nix ecosystem is still rather limited. \
This last point applies even more to GitHub.

---

## Targeted use case:
- Single user
- “Desktop” computing use
- For static and portable personal computers
- With [Home Manager](https://github.com/nix-community/home-manager)
- Without [Flakes](https://wiki.nixos.org/wiki/Flakes)
- Dynamically tilling environment with the [Hyprland Wayland compositor](https://github.com/hyprwm/Hyprland)
- For use in a stable NixOS release, with some packages from the unstable branch.
- Use for myself; One may use this configuration only after modifying it

---

## Not yet implemented or tested, including but not limited to:
- Bluetooth support
- Legacy BIOS support
- Secure Boot support
- Accessibility tools
- Touchscreen input
- Functional [NVIDIA PRIME](https://wiki.nixos.org/wiki/Nvidia#Laptop_configuration:_hybrid_graphics_(Nvidia_Optimus_PRIME)) support
- Computing with [NVIDIA's CUDA](https://wiki.nixos.org/wiki/CUDA)
- Computing with [AMD's ROCM](https://wiki.nixos.org/wiki/AMD_GPU#HIP)
- Remote desktop functionality
- Snap software packaging and deployment system
- Use inside a virtualized personal computer
- Personal computers with an architecture other than x86_64 (AMD64)
- Personal computers with no adequate GPU acceleration
- Personal computers with less than 4 GiB of random access memory
- Personal computers with less than 12 8GiB of storage

---

## General structure
This configuration consists of the main `configuration.nix` file in the `/etc/nixos/` directory, accompanied by various subdirectories and nix modules that are imported into `configuration.nix`. \
Every module can be individually configured to achieve the desired system, and various modules can be included or not inside the `configuration.nix` file. \
Having specialized nix modules separated makes for a much cleaner `configuration.nix` file, and improves upon modularity and readability. \
The general configuration is kept as reasonably simple as I can get it to be, to make it easier on myself and newer users to understand how things are configured.
