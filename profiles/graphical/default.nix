{ pkgs, config, lib, ... }:

let inherit (builtins) readFile;
in
{
  imports = [ ./i3 ];
  hardware.opengl.driSupport = true;
  hardware.pulseaudio.enable = true;
  hardware.opengl.enable = true;

  boot = {
    tmpOnTmpfs = true;

    # defined in graphical profile, should it be?
    # kernel.sysctl."kernel.sysrq" = 1;
    # make this higher so docker containers don't error with "too many files open" so easily
    # see https://github.com/NixOS/nixpkgs/pull/112472
    # cc: https://github.com/divnix/devos/issues/209
    kernel.sysctl."fs.inotify.max_user_instances" = 8192;

  };

  # TODO does this really belong here??
  services.xrdp.enable = true;

  services.xrdp.defaultWindowManager = "emacs";

  networking.firewall.allowedTCPPorts = [ 3389 8080 ];
  # networking.firewall.enable = false;

  environment = {

    systemPackages = with pkgs; [
      audacity
      pavucontrol
      vlc
      mplayer
      qutebrowser
      #mysqls
      feh
      imagemagick
      imlib2
      librsvg
      manpages
      scrot
      flameshot

      # TODO move whenever you move xrdp
      remmina
      wakeonlan
    ];
  };

  services.xbanish.enable = true;

  services.gnome3.gnome-keyring.enable = true;

  services.duplicati = {
    enable = true;
    user = "cody";
  };
  
}
