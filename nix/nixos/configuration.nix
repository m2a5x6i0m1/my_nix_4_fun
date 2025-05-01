{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./users.nix
  ];

  # Time Zone
  time.timeZone = "Europe/Moscow";

  # Boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  systemd.tpm2.enable = false;

  # Allow proprietary soft
  nixpkgs.config.allowUnfree = true;

  # Swap file
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 8 * 1024;
    }
  ];

  # Do not suspend on lid close
  services.logind.lidSwitch = "ignore";

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
