{ pkgs, lib, ... }:

{
  hj = {
    packages = with pkgs; [
      zed-editor-fhs

      # LSPs and formatters
      hyprls
      hyprlang
      nixd
      nil
      nixfmt
    ];

    # https://zed.dev/docs/configuring-zed
    files.".config/zed/settings.json" =
      let
        theme = "Gruvbox Dark";
      in
      {
        generator = lib.generators.toJSON { };
        value = {
          telemetry = {
            diagnostics = false;
            metrics = false;
          };
          ui_font_size = 16;
          buffer_font_size = 16;
          theme = {
            mode = "dark";
            light = theme;
            dark = theme;
          };
          # Fixes incorrect zsh config
          terminal.shell.program = "zsh";
        };
      };
  };
}
