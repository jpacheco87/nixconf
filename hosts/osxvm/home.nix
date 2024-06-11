{
  inputs,
  pkgs,
  ...
}:
# ================================================================ #
# =                           OUTDATED                           = #
# ================================================================ #
{
  imports = [
    ./features/general.nix
    ./features/programs/alacritty.nix
  ];

  home = {
    username = "jpacheco";
    stateVersion = "22.11";
    homeDirectory = "/Users/jpacheco/";
  };
}
