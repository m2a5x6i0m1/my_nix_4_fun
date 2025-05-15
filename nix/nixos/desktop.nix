{
  config,
  lib,
  pkgs,
  ...
}:

{

  # I use Neovim, btw :)
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # Zshell
  programs.zsh.enable = true;

  # Ly login manager
  services.displayManager.ly.enable = true;

  # Wayland compositor of my choice
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  # Browser
  programs.firefox.enable = true;

  # Status bar
  programs.waybar.enable = true;

}
