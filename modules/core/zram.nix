{pkgs, ...}: {
  zramSwap = {
    enable = true;
    priority = 5;
    memoryMax = 16 * 1024 * 1024 * 1024;
    algorithm = "zstd";
    swapDevices = 1;
    memoryPercent = 50;
  };
  boot = {
    kernelParams = [
      "zswap.enabled=1" # enables zswap
      "zswap.compressor=zstd" # compression algorithm
      "zswap.max_pool_percent=20" # maximum percentage of RAM that zswap is allowed to use
      "zswap.shrinker_enabled=1" # whether to shrink the pool proactively on high memory pressure
    ];
    tmp = {
      useZram = true;
      zramSettings = {
        compression-algorithm = "zstd";
        zram-size = "ram * 0.5";
        fs-type = "ext4";
        options = "X-mount.mode=1777,discard";
      };
    };
  };
  services.zram-generator = {
    enable = true;
    package = pkgs.zram-generator;
    settings = {};
  };
}
