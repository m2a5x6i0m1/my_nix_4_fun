{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

    # Wayland
    swaynotificationcenter
    wl-clipboard
    cliphist
    wev
    wofi

    # Hyprland
    hyprsunset
    hyprshot

    # Desktop apps
    telegram-desktop
    ghostty
    obsidian
    pwvucontrol
    neovide
    # gthumb
    # syncthing
    # spotify
    # libreoffice

    # Tui
    starship
    yazi
    fastfetch
    lazygit
    htop

    # Cli tools
    git
    curl
    busybox
    ripgrep
    zoxide
    brightnessctl
    imagemagick
    stow
    fzf
    fd
    eza

    # Lsp
    lua-language-server
    bash-language-server
    clang-tools
    harper
    nil

    # Formatters
    stylua
    nixfmt-rfc-style
    prettierd

    # Compilers
    clang
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.code-new-roman
  ];

}
