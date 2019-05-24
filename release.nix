let
  pkgs = import ./nixpkgs-from-json.nix {
    json = ./nixpkgs.json;
  };
in
{
  project = pkgs.callPackage ./default.nix { };
}
