{ pkgs, config, ... }: {
  programs.emacs = {
    enable = true;
    package = pkgs.emacs;
    overrides = self: super: rec {
      aphelia-mode = pkgs.aphelia-mode;
      # ...
    };    
    extraPackages = import ./emacs-packages.nix {pkgs=pkgs;};
  };

  # TODO this would be nice to have, but for now I get the error:
  # ```
  #   /nix/store/i5wd1m8rcip1f5nqgp2ckfj2jgm984h1-hm-home.bash: line 13: unlink: command not found
  # ```
  # home.file.".emacs.d".source = config.lib.file.mkOutOfStoreSymlink ./emacs-config;
  # so for now just do:
  # ln -s ~/hci/users/profiles/emacs/emacs-config ~/.emacs.d
}
