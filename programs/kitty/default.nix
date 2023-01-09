{ config, pkgs, ... }:

{
  # kitty configuration
  programs.kitty = {
    enable = true;
    settings = {
      font_family = "Fira Code Regular Nerd Font Complete Mono";
    };
    theme = "Doom One";
    #font.package = pkgs.nerdfonts;
  }; 
}


