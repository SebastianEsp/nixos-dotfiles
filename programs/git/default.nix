{ config, pkgs, ... }:

{
 # Git configuration
  programs.git = {
    enable = true;
    userName = "SebastianEsp";
    userEmail = "sebnie@digst.dk";
    aliases = {
      st = "status";
      cm = "commit -m";
      pu = "push";
    };
  }; 
}
