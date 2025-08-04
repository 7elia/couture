{ pkgs, ... }:

{
  imports = [
    ./hypr

    ./alacritty.nix
    ./discord.nix
    ./fastfetch.nix
    ./git.nix
    ./gtk.nix
    ./rofi.nix
    ./ssh.nix
    ./zed.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  hj.packages = with pkgs; [
    nautilus
    killall
  ];

  programs.firefox.enable = true;
}
