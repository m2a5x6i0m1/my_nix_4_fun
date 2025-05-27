{pkgs, ...}: {
  # Z-shell
  programs.zsh.enable = true;

  # I use Neovim, btw :)
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # Wayland compositor of my choice
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };
  programs.hyprlock.enable = true;
  security.pam.services.hyprlock = {};
  services.hypridle.enable = true;

  # Autologin with Greetd
  services = {
    greetd = {
      enable = true;
      settings = {
        initial_session = {
          command = "Hyprland";
          user = "${"max"}";
        };
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --greeting 'Welcome To NixOS' --asterisks --remember --remember-user-session --time --cmd Hyprland";
          user = "greeter";
        };
      };
    };
  };

  # Browser
  programs.firefox.enable = true;

  # Status bar
  programs.waybar.enable = true;
}
