{
  description = "elia's nixos system flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    hjem = {
      url = "github:feel-co/hjem";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        smfh.follows = "";
      };
    };
  };

  outputs = inputs: {
    nixosConfigurations.couture = inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs;
        user = "elia";
      };

      modules = [
        ./modules
      ];
    };
  };
}
