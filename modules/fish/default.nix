{
  pkgs,
  lib,
  ...
}:
let
  fish-helix = pkgs.stdenv.mkDerivation {
    pname = "fish-helix";
    version = "git-2025-09-24";
    src = pkgs.fetchFromGitHub {
      owner = "sshilovsky";
      repo = "fish-helix";
      rev = "main";
      hash = "sha256-04cL9/m5v0/5dkqz0tEqurOY+5sDjCB5mMKvqgpV4vM=";
    };
    installPhase = ''
      mkdir -p $out/share/fish-helix/functions
      cp -r functions/* $out/share/fish-helix/functions/
    '';
  };
in
{
  imports = [
    ./plugins.nix
    ./aliases.nix
  ];

  programs.fish.enable = true;
  programs.fish = {
    interactiveShellInit = ''
      fish_helix_key_bindings
    '';
  };
  xdg.configFile."fish/functions".source = "${fish-helix}/share/fish-helix/functions";

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
  programs.fzf.enableFishIntegration = true;

}
