{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    enableLsColors = true;
    loginShellInit = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
        exec Hyprland
      fi
    '';
    shellAliases = {
      nixos-switch = "sudo nixos-rebuild switch --flake ~/couture/#couture";
      nixos-test = "sudo nixos-rebuild test --flake ~/couture/#couture";
      nixos-size = "du -sh /nix/store";

      reboot = "sudo reboot now";
      shutdown = "sudo shutdown now";
    };
  };
}
