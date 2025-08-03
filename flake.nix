{
  description = "elia's nixos system flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    systems.url = "github:nix-systems/x86_64-linux";

    hjem = {
      url = "github:feel-co/hjem";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        smfh.follows = "";
      };
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        systems.follows = "systems";
      };
    };
  };

  outputs =
    inputs:
    let
      xlib = import ./lib inputs.nixpkgs.lib;
    in
    {
      nixosConfigurations.couture = inputs.nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs xlib;
          user = "elia";
        };

        modules = [
          ./modules
        ];
      };
    };
}
