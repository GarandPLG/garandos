{host, ...}: {
  programs.librewolf.profiles."${host}" = {
    id = 0;
    isDefault = true;
    name = "${host}";
  };

  imports = [
    ./extensions.nix
    ./search.nix
    ./settings.nix
  ];
}
