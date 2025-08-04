{ pkgs, ... }:

{
  hj = {
    packages = with pkgs; [
      alacritty
      alacritty-theme
    ];

    files.".config/alacritty/alacritty.toml" =
      let
        padding = 5;
      in
      {
        generator = (pkgs.formats.toml { }).generate "alacritty.toml";
        value = {
          general.import = [
            "${pkgs.alacritty-theme}/share/alacritty-theme/gruvbox_dark.toml"
          ];

          window = {
            opacity = 0.8;
            padding = {
              x = padding;
              y = padding;
            };
          };

          font.normal = {
            family = "Fira Code";
            style = "Semibold";
          };

          cursor.style.blinking = "on";
        };
      };
  };
}
