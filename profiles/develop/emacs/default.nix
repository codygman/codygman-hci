{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    emacsGcc
    fish
    delta
  ];
}
