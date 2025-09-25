# **GarandOS**
Disclaimer: This configuration is a fork of [ZaneyOS](https://gitlab.com/Zaney/zaneyos), a wonderful configuration I had the pleasure of ~~stealing~~ forking almost a year ago for my laptop (version 2.2). Now that I've installed NIxOS on my main computer, I've installed the latest version (2.4), connected my repository, and am customizing it to suit my needs. My configuration won't be synchronized with the main project, as it serves as the foundation upon which I'm building my custom system. The original has been stripped of many unnecessary features, so I highly recommend checking out the original project and, like me, adapting it to your needs. If you like my configuration, fork it too and manage it yourself, as the project won't accept external pull requests.

# NixOS Installation with LUKS

## Partition Preparation

### 1. Disk identification and cleaning:
```bash
# Check available disks
lsblk

# Clean disk (replace nvme0n1 with your disk)
sudo sgdisk --zap-all /dev/nvme0n1
```

### 2. Creating partitions:
```bash
# Create EFI partition (512MB)
sudo sgdisk -n 1:0:+512M -t 1:ef00 -c 1:"EFI System" /dev/nvme0n1

# Create partition for LUKS (rest of disk)
sudo sgdisk -n 2:0:0 -t 2:8e00 -c 2:"Linux LVM" /dev/nvme0n1

# Check result
sudo sgdisk -p /dev/nvme0n1
```

### 3. Formatting EFI partition:
```bash
sudo mkfs.fat -F32 /dev/nvme0n1p1
```

## Encryption and LVM

### 4. LUKS configuration:
```bash
# Encrypt main partition
sudo cryptsetup luksFormat /dev/nvme0n1p2
# Enter password (REMEMBER IT!)

# Open encrypted partition
sudo cryptsetup open /dev/nvme0n1p2 cryptroot
```

### 5. LVM configuration:
```bash
# Create Physical Volume
sudo pvcreate /dev/mapper/cryptroot

# Create Volume Group
sudo vgcreate vg0 /dev/mapper/cryptroot

# Create Logical Volumes
# (Up to max 16GB)
sudo lvcreate -L 12G -n swap vg0       # 12GB SWAP
# (For ROOT partition it's best to give at least 1/4 of the disk, but from experience I recommend roughly 100-200GB. System takes about 70GB, but it's worth leaving some extra space)
sudo lvcreate -L 175G -n root vg0      # 175GB ROOT
sudo lvcreate -l 100%FREE -n home vg0  # rest HOME
```

### 6. Formatting logical partitions:
```bash
sudo mkswap /dev/vg0/swap
sudo mkfs.ext4 /dev/vg0/root
sudo mkfs.ext4 /dev/vg0/home
```

## Mounting and installation

### 7. Mounting file systems:
```bash
sudo mount /dev/vg0/root /mnt
sudo mkdir -p /mnt/home /mnt/boot
sudo mount /dev/vg0/home /mnt/home
sudo mount /dev/nvme0n1p1 /mnt/boot
sudo swapon /dev/vg0/swap
```

### 8. Configuration generation:
```bash
sudo nixos-generate-config --root /mnt
```

### 9. **CRUCIAL STEP** - Adding LUKS configuration:
```bash
# Check UUID of encrypted partition
lsblk -f

# Edit hardware-configuration.nix
sudo nano /mnt/etc/nixos/hardware-configuration.nix
```

**Add BEFORE `fileSystems` section (replace UUID with yours):**
```nix
boot.initrd.luks.devices = {
  cryptroot = {
    device = "/dev/disk/by-uuid/YOUR-LUKS-UUID";
    preLVM = true;
  };
};
```

**Also make sure SWAP is mounted**
```nix
  swapDevices = lib.mkForce [
    {
      device = "/dev/disk/by-uuid/YOUR-SWAP-UUID";
    }
  ];
```


### 10. User configuration:
```bash
sudo nano /mnt/etc/nixos/configuration.nix
```

**Add/uncomment:**
```nix
users.users."yourusername" = {
  isNormalUser = true;
  description = "Your Name";
  extraGroups = [ "networkmanager" "wheel" ];
};

# Enable sudo for wheel
security.sudo.wheelNeedsPassword = true;
```

### 11. System installation:
```bash
sudo nixos-install
```

## Finalization

### 12. Setting passwords:
```bash
# After installation, enter the system
sudo nixos-enter

# Set user password
passwd yourusername

# Optionally root password
passwd root

exit
```

### 13. Restart:
```bash
sudo reboot
```

# GarandOS installation

### 1. Install git
```nix
nix-shell -p git
```

### 2. Download nix configuration
```bash
git clone https://gitea.garandplg.com/GarandPLG/garandos -b main --depth=1 ~/garandos
cd garandos
```

Stay in this folder during installation

### 3. Create your host folder from default folder
```bash
cp -r hosts/default hosts/<your-system-hostname>
git add .
```

### 4. Modify `variables.nix` in your host folder. Set:

- `system` - 99% this will be the default value.
- `host` - same as your host folder name.
- `username` - your username.
- `profile` - graphics card profile, choose the one most suitable for your hardware.
- `gitUsername` and `gitEmail` - required for proper git usage.
- `extraMonitorSettings` - specify your monitor (cable, resolution, refresh rate. You can leave the other two options).
- `clock24h` - whether you want 24 or 12 hour clock.
- `browser` - browser package name opened with shortcut **SUPER + W**.
- `terminal` - terminal package name opened with shortcut **SUPER + Enter**
- `keyboardLayout` and `consoleKeyMap` - keyboard layout (special characters ą,ę, etc.).
- `stylixImage` - default system wallpaper, based on which the graphical theme (stylix) will be generated. You can browse them in the `wallpapers` folder.
- `waybarChoice` - system top bar style.
- `animChoice` - system animation style.

### 5. Copy the ready `hardware-configuration.nix` to host folder:
```bash
sudo cp /etc/nixos/hardware-configuration.nix hosts/<your-system-hostname>/hardware.nix
```

### 6. Enable `Flake` functionality in your system.
```bash
NIX_CONFIG="experimental-features = nix-command flakes"
```

### 7. Build system (provide your hostname)
```bash
sudo nixos-rebuild switch --flake .#your-system-hostname
```

### 8. After system rebuild you can use the following aliases instead of repeating the previous command

- `pullos` - pull latest commits from my repository.
- `upd` - rebuild system.
- `upg` - update `flake` and rebuild system.
- `upd-bt` - rebuild system, but don't switch to it. Will be added to bootloader.
- `upd-ts` - rebuild system and switch to it, but won't be added to bootloader.
- `upd-bd` - only builds new configuration.

## TODO:
- Add instruction for needed PWA
