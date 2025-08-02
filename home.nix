{ config, pkgs, ... }:

{
  home.username = "elia";
  home.homeDirectory = "/home/elia";

  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}
