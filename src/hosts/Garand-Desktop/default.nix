{
  self,
  inputs,
  ...
}: let
  modules = self.nixosModules;
in {
  flake.nixosConfigurations."Garand-Desktop" = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      modules.hardware
      modules.homeModules
      modules.systemModules
      modules.systemPackages
      modules.variables
    ];
  };
}
