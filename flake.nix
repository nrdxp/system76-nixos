{
  description = "System76 system support for NixOS";
  outputs = { nixpkgs, ... }: {
    packages.x86_64-linux = import ./build.nix nixpkgs;
    nixosModules.system76 = import ./default.nix;
  };
}

