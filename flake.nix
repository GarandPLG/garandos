{
  description = "GarandOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    prismlauncher-cracked = {
      url = "github:Diegiwg/PrismLauncher-Cracked";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-flatpak.url = "github:gmodena/nix-flatpak?ref=latest";
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      nix-flatpak,
      ...
    }@inputs:
    let
      hostDirs = builtins.attrNames (builtins.readDir ./hosts);

      mkHost =
        hostName:
        let
          inherit (import ./hosts/${hostName}/variables.nix)
            host
            username
            profile
            system
            ;
        in
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs;
            inherit username;
            inherit host;
            inherit profile;
            inherit system;
          };
          modules = [
            ./profiles/${profile}
            nix-flatpak.nixosModules.nix-flatpak
          ];
        };
    in
    {
      nixosConfigurations = nixpkgs.lib.genAttrs hostDirs mkHost;
    };
}
