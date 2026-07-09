{
  lib,
  config,
  ...
}: {
  options.virualization.enable = lib.mkEnableOption "Enable QEMU/KVM";

  config = lib.mkIf config.virualization.enable {
    virtualisation.libvirtd.enable = true;

    programs.virt-manager.enable = true;

    services = {
      qemuGuest.enable = true;
      spice-vdagentd.enable = true;
    };
  };
}
