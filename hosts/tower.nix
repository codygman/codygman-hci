{ suites, ... }:
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

}
