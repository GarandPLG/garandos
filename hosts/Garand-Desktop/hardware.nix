_: {
  flake.nixosModules.hardware = {
    config,
    lib,
    modulesPath,
    ...
  }: {
    imports = [
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

    boot = {
      initrd = {
        availableKernelModules = [
          "nvme"
          "xhci_pci"
          "ahci"
          "usbhid"
          "usb_storage"
          "sd_mod"
        ];
        kernelModules = ["dm-snapshot"];
        luks.devices = {
          cryptroot = {
            device = "/dev/disk/by-uuid/7c018698-d35c-4ee6-92a8-5e4edf914065";
            preLVM = true;
          };
        };
      };
      kernelModules = ["kvm-amd"];
      extraModulePackages = [];
    };

    fileSystems = {
      "/" = {
        device = "/dev/disk/by-uuid/e3ac1df3-ce8f-44cd-901f-a8cd3f6955b7";
        fsType = "ext4";
      };
      "/home" = {
        device = "/dev/disk/by-uuid/0713b82c-bf8c-424f-96e1-5d883e50b451";
        fsType = "ext4";
      };
      "/boot" = {
        device = "/dev/disk/by-uuid/783D-A507";
        fsType = "vfat";
        options = [
          "fmask=0022"
          "dmask=0022"
        ];
      };
    };

    swapDevices = lib.mkForce [
      {
        device = "/dev/disk/by-uuid/8e8cc3dc-5754-4757-a2d7-53e6a2c3b5a4";
      }
    ];

    # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
    # (the default) this is the recommended approach. When using systemd-networkd it's
    # still possible to use this option, but it's recommended to use it in conjunction
    # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
    networking.useDHCP = lib.mkDefault true;
    # networking.interfaces.enp5s0.useDHCP = lib.mkDefault true;

    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
    hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  };
}
