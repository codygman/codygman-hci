{ suites, ... }:
{
  imports = [
    ../up/tower/configuration.nix
  ] ++ suites.hci;
}
