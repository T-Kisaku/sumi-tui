{ pkgs, ... }:
{
  programs.lazygit.enable = true;
  home.packages = with pkgs; [
    commitizen
  ];
  xdg.configFile."lazygit/config.yml".source = ./config.yml;
}
