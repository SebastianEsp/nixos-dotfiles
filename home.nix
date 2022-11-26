{ config, pkgs, ... }:

{
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

  # NVIM configuration
  programs.neovim.enable = true;
  programs.neovim.viAlias = true;
  programs.neovim.vimAlias = true;
 
  home.packages = with pkgs; [
    firefox
    discord
    thunderbird
    vscode
  ];

  # Git configuration
  programs.git = {
    enable = true;
    userName = "SebastianEsp";
    userEmail = "sebastianesp@hotmail.com";
    aliases = {
      st = "status";
    };
  };

  # zsh configuration
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch";
    };
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.fetchFromGitHub {
          owner = "romkatv";
	  repo = "powerlevel10k";
	  rev = "v1.16.1";
	  sha256 = "0fkfh8j7rd8mkpgz6nsx4v7665d375266shl1aasdad8blgqmf0c";
        };
      }  
    ];
  };

  # Raw configuration files
  home.file.".vimrc".source = ./vimrc;
  home.file.".zshrc".source = ./zshrc;
}
