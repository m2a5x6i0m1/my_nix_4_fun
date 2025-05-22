{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

    # Wayland
    swaynotificationcenter
    wl-clipboard
    cliphist
    hyprsunset
    wofi
    alacritty
    kitty

    # Desktop apps
    telegram-desktop
    syncthing
    gthumb
    obsidian
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
    wev
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
    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only
  ];

}
