{ pkgs, lib, ... }:

{
  environment.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "qt6ct";
  };

  hj = {
    packages = with pkgs; [
      qt6.full
      qt6ct
      qtcreator
    ];

    files.".config/qt6ct/qt6ct.conf" =
      let
        firaCode = ''"Fira Code,12,-1,5,600,0,0,0,0,0,0,0,0,0,0,1,Regular"'';
      in
      {
        generator = lib.generators.toINI { };

        value = {
          Appearance = {
            color_scheme_path = builtins.toString ./../assets/gruvbox-dark-qt6ct.conf;
            custom_pallete = true;
            standard_dialogs = "xdgdesktopportal";
            style = "Fusion";
          };

          Fonts = {
            fixed = firaCode;
            general = firaCode;
          };

          Interface = {
            activate_item_on_single_click = 1;
            buttonbox_layout = 0;
            cursor_flash_time = 1000;
            dialog_buttons_have_icons = 2;
            double_click_interval = 400;
            gui_effects = "General, AnimateMenu, AnimateCombo, AnimateTooltip, AnimateToolBox";
            keyboard_scheme = 2;
            menus_have_icons = true;
            show_shortcuts_in_context_menus = true;
            stylesheets = "${pkgs.qt6ct}/share/qt6ct/qss/fusion-fixes.qss";
            toolbutton_style = 4;
            underline_shortcut = 1;
            wheel_scroll_lines = 3;
          };
        };
      };
  };
}
