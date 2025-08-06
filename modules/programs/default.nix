{ pkgs, ... }:

{
  imports = [
    ./hypr

    ./alacritty.nix
    ./discord.nix
    ./fastfetch.nix
    ./git.nix
    ./gtk.nix
    ./qt.nix
    ./rofi.nix
    ./ssh.nix
    ./steam.nix
    ./zed.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  hj.packages = with pkgs; [
    nautilus
    killall
    pavucontrol
  ];

  programs.java.enable = true;

  programs.firefox.enable = true;
}
