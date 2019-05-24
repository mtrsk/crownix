let
  pkgs = import ./nix/nixpkgs-from-json.nix {
    json = ./nix/nixpkgs.json;
  };
in
{
  project = pkgs.callPackage ./nix/default.nix {};
}
