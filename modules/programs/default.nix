{ pkgs, ... }:

{
  imports = [
    ./hypr

    ./discord.nix
    ./fastfetch.nix
    ./git.nix
    ./ssh.nix
    ./zed.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  hj.packages = with pkgs; [
    rofi
    alacritty
    nautilus
    killall
  ];

  programs.firefox.enable = true;
}
