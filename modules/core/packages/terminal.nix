{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    cmatrix
    cowsay
    sl
    fortune
    lolcat
    eza
    amfora
  ];
}
