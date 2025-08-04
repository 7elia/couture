{ pkgs, ... }:
let
  gtkFont = "Fira Code Semibold 12";
  gtkConfig = ''
    [Settings]
    gtk-theme-name=gruvbox-dark
    gtk-icon-theme-name=oomox-gruvbox-dark
    gtk-font-name=${gtkFont}
    gtk-application-prefer-dark-theme=true
  '';
in
{
  environment.sessionVariables = {
    GTK_THEME = "gruvbox-dark";
  };

  hj = {
    packages = with pkgs; [
      gruvbox-dark-gtk
      gruvbox-dark-icons-gtk
    ];

    files.".config/gtk-3.0/settings.ini".text = gtkConfig;
    files.".config/gtk-4.0/settings.ini".text = gtkConfig;
  };

  programs.dconf.profiles.user.databases = [
    {
      lockAll = true;
      settings = {
        "org/gnome/desktop/interface" = {
          gtk-theme = "gruvbox-dark";
          icon-theme = "oomox-gruvbox-dark";
          font-name = gtkFont;
          document-font-name = gtkFont;
          monospace-font-name = gtkFont;
          color-scheme = "prefer-dark";
        };
      };
    }
  ];
}
