{ pkgs, ... }:

{
  imports = [
    ./fastfetch.nix
    ./git.nix
    ./hyprland.nix
    ./zed.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  hj.packages = with pkgs; [
    rofi

    alacritty

    hyprshot
    hyprpicker

    nautilus
  ];

  programs.firefox.enable = true;
}
