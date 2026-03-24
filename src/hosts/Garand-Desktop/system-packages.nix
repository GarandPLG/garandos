{inputs, ...}: {
  flake.nixosModules.systemPackages.environment.systemPackages = with inputs.pkgs; [
    # audacity
  ];
}
