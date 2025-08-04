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

    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rose-pine-hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        hyprlang.follows = "";
      };
    };
  };

  outputs =
    inputs:
    let
      xlib = import ./lib inputs.nixpkgs.lib;
      colors = import ./colors.nix;
    in
    {
      nixosConfigurations.couture = inputs.nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs xlib colors;
          user = "elia";
        };

        modules = [
          ./modules
        ];
      };
    };
}
