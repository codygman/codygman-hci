{ pkgs, ... }: {
  programs.emacs = {
    enable = true;
    package = pkgs.emacs;
    overrides = self: super: rec {
      aphelia-mode = pkgs.aphelia-mode;
      # ...
    };    
    extraPackages = import ./emacs-packages.nix {pkgs=pkgs;};
  };
}
