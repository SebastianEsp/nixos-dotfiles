{ config, pkgs, ... }:

{
  # Imports
  imports = builtins.concatMap import [
    ./programs
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "sebastian";
  home.homeDirectory = "/home/sebastian";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Fonts enabled
  fonts.fontconfig.enable = true;
 
  home.packages = with pkgs; [
    protonvpn-gui
    firefox
    discord
    spotify
    spotifywm
    thunderbird
    vscode
    gnumake
    libreoffice-qt
    mpv
    unzip
    autoconf
    automake
    libtool
    gnum4
    gcc
    easyeffects
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "SpaceMono" ]; })
  ];  
}
