{ pkgs, lib, ... }:

{
  hj = {
    packages = with pkgs; [
      zed-editor-fhs

      # Required libraries for running LSPs
      openssl
      libz

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
        theme = "Gruvbox Dark Soft";
        iconTheme = "Catppuccin Mocha";

        fontSize = 16;
        fontWeight = 400;
        fontFamily = "Fira Code";
      in
      {
        generator = lib.generators.toJSON { };
        value = {
          telemetry = {
            diagnostics = false;
            metrics = false;
          };

          ui_font_size = fontSize;
          ui_font_weight = fontWeight;
          ui_font_family = fontFamily;
          buffer_font_size = fontSize;
          buffer_font_weight = fontWeight;
          buffer_font_family = fontFamily;
          buffer_line_height = "comfortable";

          theme = {
            mode = "dark";
            light = theme;
            dark = theme;
          };
          icon_theme = {
            mode = "dark";
            light = iconTheme;
            dark = iconTheme;
          };

          cursor_blink = true;
          cursor_shape = "block";

          show_edit_predictions = true;
          edit_predictions = {
            mode = "eager";
            enabled_in_text_threads = true;
          };

          file_finder.include_ignored = true;

          # Fixes incorrect zsh config
          terminal.shell.program = "zsh";
        };
      };
  };
}
