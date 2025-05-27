{pkgs, ...}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    # defaultUserShell = pkgs.zsh;
    users.max = {
      isNormalUser = true;
      shell = pkgs.zsh;
      extraGroups = [
        "wheel"
        "input"
        "networkmanager"
      ];
    };
  };
}
