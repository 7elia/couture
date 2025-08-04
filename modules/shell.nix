{
  pkgs,
  lib,
  inputs,
  ...
}:

{
  hj = {
    packages = with pkgs; [
      inputs.quickshell.packages.${pkgs.system}.default
      qt6.full
      qt6ct
      qtcreator
    ];

    # TODO: customize this
    files.".config/qt6ct/qt6ct.conf" =
      let
        firaCode = ''"Fira Code,12,-1,5,600,0,0,0,0,0,0,0,0,0,0,1,Regular"'';
      in
      {
        generator = lib.generators.toINI { };
        value = {
          Appearance = {
            custom_pallete = false;
            standard_dialogs = "default";
            style = "Fusion";
          };

          Fonts = {
            fixed = firaCode;
            general = firaCode;
          };
        };
      };
  };

  environment.sessionVariables = {
    # QS_CONFIG_PATH = builtins.toString ./../shell;
    QT_QPA_PLATFORMTHEME = "qt6ct";
  };
}
