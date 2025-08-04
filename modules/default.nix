{ pkgs, lib, ... }:

{
  imports = [
    ./hardware
    ./programs

    ./boot.nix
    ./locale.nix
    ./networking.nix
    ./shell.nix
    ./user.nix
  ];

  nix.settings = {
    extra-substituters = [
      "https://nix-community.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  fonts.packages = with pkgs; [
    fira-code
  ];

  hj.files.".config/nix/nix.conf" = {
    generator = lib.generators.toKeyValue { };
    value = {
      experimental-features = "nix-command flakes";
    };
  };

  system.stateVersion = "25.05";
}
