# Work around for https://github.com/divnix/devos/issues/315
final: prev: {
  nix-direnv = prev.nix-direnv.override {
    enableFlakes = true;
  };
}
