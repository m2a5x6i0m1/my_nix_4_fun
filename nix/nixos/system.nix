{
  config,
  lib,
  ...
}:

{

  # Time Zone
  time.timeZone = "Europe/Moscow";

  # Disable tpm
  systemd.tpm2.enable = false;

  # Boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Swap file
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 2 * 1024;
    }
  ];

  # Automatic system upgrade
  system.autoUpgrade.enable = true;
  system.autoUpgrade.dates = "weekly";

  # Automatic garbage collect
  nix.gc.automatic = true;
  nix.gc.dates = "daily";
  nix.gc.options = "--delete-older-than 3d";
  nix.settings.auto-optimise-store = true;

}
