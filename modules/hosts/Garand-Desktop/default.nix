{
  self,
  inputs,
  ...
}: {
  flake.nixosConfigurations."Garand-Desktop" = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = with self.modules.nixos; [
      variables
    ];
  };
}
