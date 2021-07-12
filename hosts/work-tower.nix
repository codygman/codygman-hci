{ suites, pkgs, ... }:
{
  imports = [
    # ./work-tower/configuration.nix
    ../up/tower/configuration.nix
  ] ++ suites.hci;

  location.provider = "manual";
  location.latitude = 32.7767;
  location.longitude = -96.7970;

  # services.wakeonlan.interfaces = [ { interface = "enp37s0"; method = "magicpacket";}];

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


  networking.hostName = "work-tower"; # Define your hostname.
  networking.networkmanager = {
    enable = true;
    packages = [ pkgs.networkmanager_openvpn ];
  };

  programs.nm-applet = {
    indicator = true;
    enable = true;
  };

}
