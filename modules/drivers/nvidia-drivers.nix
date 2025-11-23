{
  lib,
  config,
  pkgs,
  ...
}:
with lib; let
  cfg = config.drivers.nvidia;
in {
  options.drivers.nvidia = {
    enable = mkEnableOption "Enable Nvidia Drivers";
  };

  config = mkIf cfg.enable {
    services.xserver.videoDrivers = ["nvidia"];
    environment.systemPackages = with pkgs; [nvidia-docker];
    hardware = {
      nvidia-container-toolkit.enable = true;
      nvidia = {
        # Modesetting is required.
        modesetting.enable = true;
        # Nvidia power management. Experimental, and can cause sleep/suspend to fail.
        powerManagement.enable = true;
        # Fine-grained power management. Turns off GPU when not in use.
        # Experimental and only works on modern Nvidia GPUs (Turing or newer).
        powerManagement.finegrained = false;
        # Use the NVidia open source kernel module (not to be confused with the
        # independent third-party "nouveau" open source driver).
        # Support is limited to the Turing and later architectures. Full list of
        # supported GPUs is at:
        # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus
        # Only available from driver 515.43.04+
        # Currently alpha-quality/buggy, so false is currently the recommended setting.
        open = false;
        # Enable the Nvidia settings menu,
        # accessible via `nvidia-settings`.
        nvidiaSettings = true;
        # Optionally, you may need to select the appropriate driver version for your specific GPU.
        package = config.boot.kernelPackages.nvidiaPackages.stable;
      };
    };
  };
}
# Making nvidia docker toolkit work:
#
# sudo nvidia-ctk cdi generate --output=/etc/cdi/nvidia.yaml
#
# sudo nvidia-ctk cdi list
#
# sudo tee /etc/docker/daemon.json > /dev/null <<EOF
# {
#     "features": {
#         "cdi": true
#     }
# }
# EOF
#
# docker run --device nvidia.com/gpu=all

