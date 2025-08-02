{
  imports = [
    ./hardware
    ./programs

    ./boot.nix
    ./locale.nix
    ./networking.nix
    ./user.nix
  ];

  system.stateVersion = "25.05";
}
