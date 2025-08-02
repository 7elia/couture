{ pkgs, ... }:

{
  imports = [
    ./git.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    rofi
    neofetch

    hyprls
    nixd
    nil
    nixfmt

    zed-editor
    diff-so-fancy
    alacritty

    hyprshot
    hyprpicker

    nautilus
  ];

  programs.hyprland.enable = true;
  programs.firefox.enable = true;
}
