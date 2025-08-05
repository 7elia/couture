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
    ./zed.nix
    ./zsh.nix
  ];

  nixpkgs.config.allowUnfree = true;

  hj.packages = with pkgs; [
    nautilus
    killall
    pavucontrol
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
    package = pkgs.steam.override {
      extraEnv = {
        MANGOHUD = true;
        OBS_VKCAPTURE = true;
        RADV_TEX_ANISO = 16;
      };
      extraLibraries =
        p: with p; [
          atk
        ];
    };
  };

  programs.java.enable = true;

  programs.firefox.enable = true;
}
