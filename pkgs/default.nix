final: prev: {
  # keep sources this first
  sources = prev.callPackage (import ./_sources/generated.nix) { };
  # then, call packages with `final.callPackage`
  
  apheleia-mode = final.callPackage ./applications/editors/emacs/elisp-packages/apheleia-mode { };
  talon-voice = final.callPackage ./applications/misc/talon-voice { };
  
  # emacsPackages = prev.emacsPackages.overrideScope' (_final: _prev: {
  #   apheleia-mode = final.callPackage ./applications/editors/emacs/elisp-packages/apheleia-mode { };
  # });
  
}
