{ pkgs, xlib, ... }:

{
  hj = {
    packages = with pkgs; [
      hyprpaper
    ];

    files.".config/hypr/hyprpaper.conf" =
      let
        wallpaperPath = builtins.toString ./../../../assets/gruvbox-dark-rainbow.png;
      in
      {
        generator = xlib.generators.toHyprlang { };
        value = {
          preload = [
            wallpaperPath
          ];
          wallpaper = [
            ",${wallpaperPath}"
          ];
          splash = false;
        };
      };
  };
}
