{ pkgs, lib, ... }:

{
  hj = {
    packages = with pkgs; [
      vesktop
    ];

    files.".config/vesktop/settings.json" = {
      generator = lib.generators.toJSON { };
      value = {
        discordBranch = "stable";
        minimizeToTray = false;
        arRPC = true;
        splashColor = "rgb(0, 0, 0)"; # TODO
        openLinksWithElectron = true;
        disableMinSize = true;
        hardwareVideoAcceleration = true;
      };
    };

    files.".config/vesktop/settings/quickCss.css".text = builtins.readFile ./quickCss.css;
  };
}
