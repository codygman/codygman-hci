{ suites, pkgs, ... }:
{
  imports = [
    ../up/tower/configuration.nix
  ] ++ suites.hci;

  location.provider = "manual";
  location.latitude = 32.7767;
  location.longitude = -96.7970;
  
  services.redshift = {
    enable = true;
    brightness = {
      day = "1.0";
      night = "0.7";
    };
    temperature = {
      day = 6500;
      night = 3801;
    };
    extraOptions = [ "-v" ];
  };

  environment = {

    systemPackages = with pkgs; [

      pavucontrol
    ];
  };

  services.blueman.enable = true;

  hardware.opengl.driSupport32Bit = true;
  hardware.pulseaudio = {
    enable = true;
    support32Bit = true;
    package = pkgs.pulseaudioFull;
    extraModules = [pkgs.pulseaudio-modules-bt ];
    extraConfig = "
       load-module module-switch-on-connect
    ";
  };

  hardware.bluetooth = {
    enable = true;
    settings = {
      General = {
        Enable = "Source,Sink,Media,Socket";
      };
    };
  };

}
