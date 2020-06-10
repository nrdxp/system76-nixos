{
  description = "System76 system support for NixOS";
  outputs = { ... }: { nixosModules.system76 = import ./default.nix; };
}

