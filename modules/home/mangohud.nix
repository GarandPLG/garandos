{
  pkgs,
  lib,
  config,
  ...
}: {
  options.mangohud.enable = lib.mkEnableOption "MangoHud";

  config = lib.mkIf config.mangohud.enable {
    programs.mangohud = {
      enable = true;
      package = pkgs.mangohud;
      settings = lib.mkForce {
        position = "top-right";
        background_alpha = 0.4;
        font_size = 18;
        round_corners = 8;
        no_display = 0;

        gpu_color = "2e9ef4";
        cpu_color = "39d353";
        vram_color = "ad3aff";
        ram_color = "c0c0c0";
        engine_color = "eb5454";
        frametime_color = "e8c446";
        text_color = "ffffff";
        background_color = "020202";
        media_player_color = "ffffff";

        fps_color_change = 1;
        fps_color = "39d353,e8c446,eb5454";
        fps_value = "60,30";

        fps = 1;
        fps_only = 0;

        gpu_stats = 1;
        gpu_load_change = 1;
        gpu_load_value = "60,90";
        gpu_load_color = "39d353,e8c446,eb5454";
        gpu_temp = 1;
        gpu_core_clock = 1;
        gpu_mem_clock = 0;
        gpu_power = 1;
        gpu_name = 1;
        vram = 1;

        cpu_stats = 1;
        cpu_load_change = 1;
        cpu_load_value = "60,90";
        cpu_load_color = "39d353,e8c446,eb5454";
        cpu_temp = 1;
        cpu_mhz = 1;
        core_load = 0;

        ram = 1;

        frametime = 1;
        frame_timing = 1;
        histogram = 0;

        engine_version = 1;
        vulkan_driver = 1;
        arch = 0;

        fps_limit = 0;
        toggle_hud = "Shift_R+F12";
        toggle_fps_limit = "Shift_L+F1";
      };
    };
  };
}
