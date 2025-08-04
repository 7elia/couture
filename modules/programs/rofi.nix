{ pkgs, ... }:

{
  hj = {
    packages = with pkgs; [
      rofi
    ];

    files.".config/rofi/config.rasi".text = ''
      configuration {
          timeout {
              action: "kb-cancel";
              delay:  0;
          }
          filebrowser {
              directories-first: true;
              sorting-method:    "name";
          }
      }

      @theme "${pkgs.rofi}/share/rofi/themes/gruvbox-dark-soft.rasi"
    '';
  };
}
