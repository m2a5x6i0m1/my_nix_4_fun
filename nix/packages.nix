{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

    # wayland
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
    gthumb

    # Tui
    starship
    yazi
    fastfetch
    lazygit
    zsh

    # Cli tools
    zoxide
    ripgrep
    fzf
    fd
    stow
    wget
    unzip
    git
    eza

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
