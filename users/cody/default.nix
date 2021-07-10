{ ... }:
{

  users.users.cody = {
    uid = 1000;
    password = "cody";
    description = "default";
    isNormalUser = true;
    # TODO shouldn't have to manually add networkmanager group
    extraGroups = [ "wheel" "docker" "networkmanager" "duplicati" ];
    openssh.authorizedKeys.keyFiles = [
      ../../files/public/cody_razer_rsa.pub
    ];
  };

  home-manager.users.cody = { suites, ... }: {
    imports = suites.base;

    # shouldn't this clash with environment.sessionVariables in develop/default.nix?
    home.sessionVariables = {
      # EDITOR = "emacsclient -t -a=\"\"";
    };
    xdg.mimeApps.enable = true;
    xdg.mimeApps.associations.added = {
              "x-scheme-handler/org-protocol" = [ "org-protocol.desktop" ];

    };
    xdg.mimeApps.defaultApplications =
      let
        web_browser = [ "org.qutebrowser.qutebrowser.desktop"  ]; #"firefox.desktop"
        # image = [ "chromium.desktop" ];
      in
        {
          #"inode/directory" = file_browser; # TODO emacs client?
          "text/html" = web_browser;
          # "application/pdf" = [ "org.gnome.Evince.desktop" ];
          "x-scheme-handler/msteams"= "teams.desktop";
          "x-scheme-handler/org-protocol"= "emacsclient %u";
          "binary/octet-stream"=[ "emacs.desktop" "calc.desktop"];
          "x-scheme-handler/http" = web_browser;
          "x-scheme-handler/https" = web_browser;
          "x-scheme-handler/about" = web_browser;
          "x-scheme-handler/unknown" = web_browser; # TODO emacs client?
          # "image/png" = image;
        };
  };


  # home-manager.users.cody.home.file = {
  #     ".local/share/applications/org-protocol.desktop".text = ''
  #       [Desktop Entry]
  #       Name=org-protocol
  #       Exec=emacsclient %u
  #       Type=Application
  #       Terminal=false
  #       Categories=System;
  #       MimeType=x-scheme-handler/org-protocol;
  #     '';
  # };

}
