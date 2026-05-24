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
      inputs = {
        nixpkgs.follows = "nixpkgs";
        flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";
        nur.inputs = {
          nixpkgs.follows = "nixpkgs";
          flake-parts.follows = "stylix/flake-parts";
        };
      };
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
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

    affinity-nix = {
      url = "github:mrshmllow/affinity-nix";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
        git-hooks.inputs = {
          nixpkgs.follows = "nixpkgs";
          gitignore.inputs.nixpkgs.follows = "nixpkgs";
        };
      };
    };

    nix-flatpak.url = "github:gmodena/nix-flatpak?ref=latest";

    garandos-tui = {
      url = "git+https://gitea.garandplg.com/GarandPLG/garandos-tui?ref=main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    nix-flatpak,
    garandos-tui,
    ...
  } @ inputs: let
    hostDirs = builtins.attrNames (builtins.readDir ./hosts);

    mkHost = hostName: let
      hostVars = import ./hosts/${hostName}/variables.nix;
      hostPrinterVars = import ./hosts/${hostName}/printers.nix;
    in
      nixpkgs.lib.nixosSystem {
        inherit (hostVars) system;
        specialArgs = hostVars // hostPrinterVars // {inherit inputs;};
        modules = [
          ./profiles/${hostVars.profile}
          nix-flatpak.nixosModules.nix-flatpak
          garandos-tui.nixosModules.garandos-tui
        ];
      };
  in {
    nixosConfigurations = nixpkgs.lib.genAttrs hostDirs mkHost;
  };
}
