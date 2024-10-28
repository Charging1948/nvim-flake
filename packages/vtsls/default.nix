{
  mkYarnPackage,
  lib,
  ...
}:

mkYarnPackage {
  name = "vtsls";
  src = lib.cleanSource ./.;

  packageJSON = ./package.json;
  yarnLock = ./yarn.lock;
  yarnNix = ./yarn.nix;
}
