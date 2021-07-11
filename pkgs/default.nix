final: prev: {
  # keep sources this first
  sources = prev.callPackage (import ./_sources/generated.nix) { };
  # then, call packages with `final.callPackage`
  
  apheleia-mode = final.callPackage ./applications/editors/emacs/elisp-packages/apheleia-mode { };
  talon-voice = final.callPackage ./applications/misc/talon-voice { };
  northwind-sql = prev.callPackage ./development/misc/northwind-sql { };
  shortuuid = prev.callPackage ./development/misc/shortuuid { };  
  # emacsPackages = prev.emacsPackages.overrideScope' (_final: _prev: {
  #   apheleia-mode = final.callPackage ./applications/editors/emacs/elisp-packages/apheleia-mode { };
  # });
  
}
