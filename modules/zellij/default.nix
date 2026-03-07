{ ... }:
{
  programs.zellij = {
    enable = true;
    exitShellOnExit = true;
  };
  xdg.configFile."zellij/config.kdl".source = ./config.kdl;
  xdg.configFile."zellij/layouts/sumi.kdl".source = ./layouts/sumi.kdl;
}
