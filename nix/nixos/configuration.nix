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
    ./system.nix
    ./users.nix
    ./desktop.nix
  ];

  # Allow proprietary soft
  nixpkgs.config.allowUnfree = true;

  # Allow flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
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
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  system.stateVersion = "24.11"; # DO NOT CHANGE!
}
