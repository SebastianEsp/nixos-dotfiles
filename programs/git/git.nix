{ config, pkgs, ... }:

{
 # Git configuration
  programs.git = {
    enable = true;
    userName = "SebastianEsp";
    userEmail = "sebastianesp@hotmail.com";
    aliases = {
      st = "status";
      cm = "commit -m";
    };
  }; 
}
