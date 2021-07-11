{pkgs, ...}:
{
  # environment.systemPackages = [ pkgs.talon-voice ];
  home.packages = [ pkgs.talon-voice ];
  # TODO get this symlinking working
  # until then: ln -s ~/hci/users/profiles/talon/user/ ~/.talon/user
  # home.file."~/.talon/user".source = config.lib.file.mkOutOfStoreSymlink ./user;  
}
