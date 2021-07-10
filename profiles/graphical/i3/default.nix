{ pkgs, config, lib, ... }:
{
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
}
