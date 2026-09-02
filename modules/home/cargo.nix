_: {
  # programs.cargo = {
  #   enable = true;
  #   cargoHome = "/home/${username}/.cargo";
  #   settings = {
  #     registries."gitea-garandplg".index = "sparse+https://gitea.garandplg.com/api/packages/GarandPLG/cargo/";
  #     net.git-fetch-with-cli = true;
  #   };
  # };
  home.file.".cargo/config.toml".text = ''
    [registries]
    gitea-garandplg = { index = "sparse+https://gitea.garandplg.com/api/packages/GarandPLG/cargo/" }

    [net]
    git-fetch-with-cli = true
  '';
}
