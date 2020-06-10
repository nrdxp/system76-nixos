nixpkgs:
let
  config = {
    # allowUnfree = true;
    packageOverrides = pkgs: {
      linuxPackages = pkgs.linuxPackages.extend (self: super: {
        system76-acpi-dkms = self.callPackage ./system76-acpi-dkms { };
        system76-dkms = self.callPackage ./system76-dkms { };
        system76-io-dkms = self.callPackage ./system76-io-dkms { };
        system76-firmware = self.callPackage ./system76-firmware { };
        system76-driver = self.callPackage ./system76-driver { };
      });
    };
  };

  pkgs = import nixpkgs {
    inherit config;
    system = "x86_64-linux";
  };

in with pkgs; {
  system76-acpi-dkms_beta = linuxPackages.system76-acpi-dkms.beta;
  system76-acpi-dkms_stable = linuxPackages.system76-acpi-dkms.stable;
  system76-dkms_beta = linuxPackages.system76-dkms.beta;
  system76-dkms_stable = linuxPackages.system76-dkms.stable;
  system76-dkms_legacy_1_0_1 = linuxPackages.system76-dkms.legacy_1_0_1;
  system76-dkms_legacy_1_0_0 = linuxPackages.system76-dkms.legacy_1_0_0;
  system76-io-dkms_beta = linuxPackages.system76-io-dkms.beta;
  system76-io-dkms_stable = linuxPackages.system76-io-dkms.stable;
  system76-firmware = linuxPackages.system76-firmware;
  system76-driver-v19_04_3 = linuxPackages.system76-driver.v19_04_3;
  system76-driver-v18_10_6 = linuxPackages.system76-driver.v18_10_6;
  system76-driver-v18_04_35 = linuxPackages.system76-driver.v18_04_35;
}
