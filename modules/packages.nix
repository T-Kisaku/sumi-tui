{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Better core utils
    duf # disk information
    eza # ls replacement
    fd # find replacement
    gtrash # rm replacement, put deleted files in system trash
    ncdu # disk space
    ripgrep # grep replacement
    tldr

    ## Modern TUI tools
    broot # tree files view
    yazi
    jq # JSON processor
    hyperfine # benchmarking tool
  ];
}
