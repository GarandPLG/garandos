_: {
  programs.noctalia.settings.plugin_settings."noctalia/bitwarden" = {
    server_url = "https://vw.garandplg.com";
    vault_timeout = "30";
    gen_length = 128;
    gen_uppercase = true;
    gen_lowercase = true;
    gen_number = true;
    gen_special = true;
  };
}
