{ pkgs, ... }:

{
  imports = [
    ./discord

    ./fastfetch.nix
    ./git.nix
    ./hyprland.nix
    ./ssh.nix
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

    killall
  ];

  programs.firefox.enable = true;
}
