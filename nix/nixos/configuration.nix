{...}: {
  imports = [
    ./hardware-configuration.nix
    ./modules/default.nix
    ./system.nix
    ./packages.nix
  ];

  # Allow proprietary soft
  nixpkgs.config.allowUnfree = true;

  # Allow flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "24.11"; # DO NOT CHANGE!
}
