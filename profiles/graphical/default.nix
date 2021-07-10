{ pkgs, config, lib, ... }:

let inherit (builtins) readFile;
in
{
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


  home-manager.users.cody.services.dunst.enable = true;
  home-manager.users.cody.services.polybar = {
    enable = false;
    package = pkgs.polybar.override {
      pulseSupport = true;
      githubSupport = true;
    };
    config = {
      "bar/top" = {
        width = "100%";
        height = "1.4%";
        background = "#002E3440";
        module-margin = 5;
        modules-right = "date";
        tray-position = "right";
        tray-max-size = 10;
      };
      "module/date" = {
        type = "internal/date";
        internal = 5;
        date = "%Y.%m.%d";
        time = "%H:%M:%S";
        label = "%date% %time%  ";
      };
      "module/pulseaudio" = {
        type = "internal/pulseaudio";
        # sink = "alsa_output.usb-Topping_E30-00.analog-stereo";
      };
    };
    script = "polybar top &";

  };
  home-manager.users.cody.services.picom.enable = true;

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

  services.xserver = {
    enable = true;
    #displayManager.defaultSession = "emacs+exwm";
    # displayManager.defaultSession = "xfce";
    displayManager.defaultSession = "none+i3";
    # displayManager.defaultSession = "none+stumpwm"; 
    xkbOptions = "ctrl:nocaps";
    # desktopManager = {
    #   xfce.enable = true;
    # };
    windowManager.i3.enable = true; # default bindings clash with emacs copy
    # windowManager.stumpwm.enable = true; # kinda cool, but would have to make my own talon integration
#    windowManager.session = lib.singleton {
#      name = "exwm";
#      start = ''
#        export EDITOR='emacsclient -t -a emacs'
#        $EDITOR
#      '';
#    };
    libinput.enable = true;
  };


  # to do move me
  services.duplicati = {
    enable = true;
    user = "cody";
  };
  
}
