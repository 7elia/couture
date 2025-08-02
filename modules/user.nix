{ pkgs, ... }:

{
  users = {
    defaultUserShell = pkgs.zsh;

    users.elia = {
      isNormalUser = true;
      description = "elia";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
      useDefaultShell = true;
    };
  };
}
