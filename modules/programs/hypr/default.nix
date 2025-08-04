{ pkgs, ... }:

{
  imports = [
    ./hyprcursor.nix
    ./hyprland.nix
    ./hyprpaper.nix
  ];

  hj.packages = with pkgs; [
    hyprshot
    hyprpicker
  ];
}
