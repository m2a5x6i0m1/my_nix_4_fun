{ config, lib, pkgs, ... }:

{
  imports =
    [ /etc/nixos/hardware-configuration.nix ./packages.nix ./fonts.nix ];

  # Time Zone
  time.timeZone = "Europe/Moscow";

  # Boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  systemd.tpm2.enable = false;

  # Network
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  # Bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;

  # Sound
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # Ly login manager
  services.displayManager.ly.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    defaultUserShell = pkgs.zsh;
    users.max = {
      isNormalUser = true;
      extraGroups = [ "wheel" "input" "networkmanager" ];
    };
  };

  # Zshell
  programs.zsh.enable = true;

  # Wayland compositor of my choice
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  # Browser
  programs.firefox.enable = true;

  # I use Neovim, btw :)
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  system.stateVersion = "24.11"; # DO NOT CHANGE!
}

