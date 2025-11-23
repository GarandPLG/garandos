{
  inputs,
  system,
  host,
  ...
}: {
  # about:debugging#/runtime/this-firefox Przydatne do wyszukiwania ID rozszerzenia
  # programs.librewolf.profiles."${host}".extensions.force = true;
  programs.librewolf.profiles."${host}".extensions.packages = with inputs.firefox-addons.packages.${system}; [
    bitwarden
    floccus
    ublock-origin
    sponsorblock
    darkreader
    # flagfox
    hoppscotch
    return-youtube-dislikes
    sponsorblock
    # pwas-for-firefox
    mtab
  ];
}
