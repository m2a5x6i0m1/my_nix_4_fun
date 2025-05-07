{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

    # Wayland
    swaynotificationcenter
    wl-clipboard
    cliphist

    # Hyprland
    hyprsunset
    waybar
    kitty
    wofi

    # Desktop apps
    telegram-desktop
    syncthing
    spotify
    gthumb
    pwvucontrol

    # Tui
    starship
    yazi
    fastfetch
    lazygit
    btop
    zsh

    # Cli tools
    git
    ripgrep
    zoxide
    stow
    fd
    fzf
    wev
    wget
    eza

    # Dev
    lua-language-server
    stylua
    nil
    nixfmt-rfc-style
    prettierd
    harper
    gcc
  ];

  fonts.packages = with pkgs; [ nerd-fonts.code-new-roman ];

}
