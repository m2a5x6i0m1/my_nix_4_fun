{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

    # wayland
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
    zsh

    # Cli tools
    busybox
    brightnessctl
    ripgrep
    zoxide
    fd
    fzf
    eza
    git
    stow
    wev

    # Dev
    lua-language-server # lua lsp
    stylua # lua formatter
    nil # nix lsp
    nixfmt-rfc-style # nix formatter
    prettierd
    harper
    gcc
  ];

  fonts.packages = with pkgs; [ nerd-fonts.code-new-roman ];

}
