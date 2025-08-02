{ pkgs, ... }:

{
  imports = [
    ./git
    ./zsh
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
  ];

  programs.hyprland.enable = true;
  programs.firefox.enable = true;
}
