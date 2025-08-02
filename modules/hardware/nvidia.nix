{
  hardware.graphics.enable = true;
  hardware.nvidia.open = true;

  services.xserver.videoDrivers = [ "nvidia" ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
