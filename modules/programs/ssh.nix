{ pkgs, user, ... }:

{
  services.gnome.gcr-ssh-agent = {
    enable = true;
    package = pkgs.gcr_4;
  };

  programs = {
    seahorse.enable = true;
    ssh = {
      extraConfig = ''
        Host github.com
            Hostname github.com
            IdentityFile /home/${user}/.ssh/github
      '';
      enableAskPassword = true;
    };
  };
}
