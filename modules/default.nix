{
  imports = [
    ./hardware
    ./programs

    ./boot.nix
    ./locale.nix
    ./networking.nix
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

  system.stateVersion = "25.05";
}
