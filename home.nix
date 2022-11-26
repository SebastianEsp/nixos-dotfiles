{ config, pkgs, ... }:

{
  # Imports
  imports = [
    ./programs/kitty/kitty.nix
    ./programs/git/git.nix
    ./programs/zsh/zsh.nix
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

  # NVIM configuration
  programs.neovim.enable = true;
  programs.neovim.viAlias = true;
  programs.neovim.vimAlias = true;
 
  home.packages = with pkgs; [
    firefox
    discord
    spotify
    thunderbird
    vscode
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "SpaceMono" ]; })
  ];
  
  # Raw configuration files
  home.file.".vimrc".source = ./vimrc;
}
