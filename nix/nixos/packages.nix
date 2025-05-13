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
    obsidian
    libreoffice

    # Tui
    starship
    yazi
    fastfetch
    lazygit
    zsh

    # Cli tools
    git
    curl
    busybox
    ripgrep
    zoxide
    stow
    fd
    fzf
    wev
    brightnessctl
    eza

    # Dev
    lua-language-server
    harper
    nil
    # markdown-oxide
    stylua
    nixfmt-rfc-style
    prettierd
    gcc
  ];

  fonts.packages = with pkgs; [ nerd-fonts.code-new-roman ];

}
