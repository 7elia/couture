{
  pkgs,
  inputs,
  user,
  lib,
  ...
}:

{
  imports = [
    inputs.hjem.nixosModules.default
    (lib.modules.mkAliasOptionModule [ "hj" ] [ "hjem" "users" user ])
  ];

  hjem = {
    linker = pkgs.smfh;
    clobberByDefault = true;
    users.${user} = {
      enable = true;
      inherit user;
    };
  };

  users = {
    defaultUserShell = pkgs.zsh;

    users.${user} = {
      isNormalUser = true;
      description = user;
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
      useDefaultShell = true;
    };
  };
}
