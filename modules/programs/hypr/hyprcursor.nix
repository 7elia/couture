{ pkgs, inputs, ... }:
let
  cursorTheme = "rose-pine-hyprcursor";
in
{
  hj.packages = [
    inputs.${cursorTheme}.packages.${pkgs.system}.default
  ];

  environment.sessionVariables = {
    HYPRCURSOR_THEME = cursorTheme;
    XCURSOR_THEME = cursorTheme;
    XCURSOR_SIZE = 25;
  };
}
