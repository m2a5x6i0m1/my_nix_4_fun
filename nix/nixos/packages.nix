{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

    # Wayland
    swaynotificationcenter
    wl-clipboard
    cliphist
    wev
    wofi

    hyprsunset
    hyprshot

    # Desktop apps
    telegram-desktop
    ghostty
    obsidian
    gthumb
    syncthing
    libreoffice
    pwvucontrol

    # Tui
    starship
    yazi
    fastfetch
    lazygit
    zsh
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
