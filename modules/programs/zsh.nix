{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    enableLsColors = true;
    shellAliases = {
      ls = "ls -l";
      nixos-switch = "sudo nixos-rebuild switch --flake ~/couture/#couture";
      nixos-test = "sudo nixos-rebuild test --flake ~/couture/#couture";
      reboot = "sudo reboot now";
    };
    loginShellInit = "Hyprland";
  };
}
