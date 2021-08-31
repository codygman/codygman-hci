{ pkgs, ... }: {

  imports = [ ./haskell  ];

 nixpkgs.config = {
    allowUnfree = true;
    chromium.enableWideVine = true;
 };

  security.pam.loginLimits = [{
    domain = "*";
    type = "soft";
    item = "nofile";
    value = "99999"; # is this high a good idea?
  }];

  environment.shellAliases = { v = "$EDITOR"; };

  environment.sessionVariables = {
    PAGER = "less";
    # EDITOR = "emacsclient -t -a=\"\"";
    # VISUAL = "emacsclient -t -a=\"\"";
  };

  environment.systemPackages = with pkgs; [
    logkeys
    # work
    docker-compose
    dbeaver
    robo3t
    sqlite # for org-roam, so for work/personal really
    teams # should go somewhere else? work.im maybe?
    zoom-us
    chromium
    firefox
    file
    gnupg
    less
    ncdu
    wget
    gnumake
    vim
    cached-nix-shell
    bitwarden
    rofi
    bitwarden-cli
    lastpass-cli
    keyutils
    northwind-sql
    shortuuid
    manix
    nox
    hyperfine
    # lol I made it far without this
    gcc
    sqlite.dev
    fish

    cachix

    unzip
    patchelf
    libnotify
    hello

    nixops
    element-desktop
  ];

  services.postgresql = {
    enable = true;
    port = 5435;
    authentication = pkgs.lib.mkOverride 10 ''
      local all all trust
      host all all ::1/128 trust
    '';

    # GRANT ALL ON ALL TABLES IN SCHEMA PUBLIC TO cody;
    initialScript = pkgs.writeText "backend-initScript" ''
      CREATE ROLE cody WITH LOGIN PASSWORD 'cody' CREATEDB;
      GRANT postgres TO cody
      CREATE DATABASE cody;
      CREATE DATABASE northwind;
      \c northwind;
      \i ${pkgs.northwind-sql}/share/northwind.sql
    '';
  };

  fonts = {
    # fonts = [ pkgs.dejavu_nerdfont ];
    # fontconfig.defaultFonts.monospace =
    #  [ "DejaVu Sans Mono Nerd Font Complete Mono" ];
  };

  documentation.dev.enable = true;

  programs.thefuck.enable = true;
  programs.firejail.enable = true;
  programs.mtr.enable = true;

  virtualisation = {
    docker.enable = true;
  };

}
