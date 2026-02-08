{ ... }:
{
  programs.zellij = {
    enable = true;
    exitShellOnExit = true;
  };
  xdg.configFile."zellij/config.kdl".source = ./config.kdl;
}
