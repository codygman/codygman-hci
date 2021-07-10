final: prev: {
  # keep sources this first
  sources = prev.callPackage (import ./_sources/generated.nix) { };
  # then, call packages with `final.callPackage`
  apheleia-mode = final.callPackage ./applications/editors/emacs/elisp-packages/apheleia-mode { };
}
