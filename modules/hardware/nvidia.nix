{
  hardware.graphics.enable = true;
  hardware.nvidia.open = true;

  services.xserver.videoDrivers = [ "nvidia" ];

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    GBM_BACKEND = "nvidia-drm";
    ELECTRON_OZONE_PLATFORM_HINT = "auto";
    GDK_BACKEND = "wayland,x11";
    QT_GPA_PLATFORM = "wayland;xcb";
    _JAVA_AWT_WM_NONREPARENTING = "1";
    __GL_SYNC_TO_VBLANK = "0";
    __GL_VRR_ALLOWED = "1";
    __GL_MaxFramesAllowed = "1";
    __GL_YIELD = "USLEEP";
    __GL_SHADER_DISK_CACHE_SKIP_CLEANUP = "1";
  };
}
