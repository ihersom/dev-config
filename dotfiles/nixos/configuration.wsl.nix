# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

# NixOS-WSL specific options are documented on the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ config, lib, pkgs, ... }:

{
  imports = [
    # include NixOS-WSL modules
    <nixos-wsl/modules>
  ];
  
  #WSL Options - https://nix-community.github.io/NixOS-WSL/options.html
  wsl.enable = true;
  wsl.defaultUser = "ianhersom";
  wsl.docker-desktop.enable = true;  
  wsl.nativeSystemd = true;
  wsl.useWindowsDriver = false;
  wsl.wslConf.automount.enabled = true;
  wsl.wslConf.network.generateResolvConf = false;
  
  systemd.services.resolvconf.wantedBy = lib.mkForce [ ];

  users.users.ianhersom = {
    isNormalUser  = true;
    home  = "/home/ianhersom";
    description  = "Ian Hersom";
    extraGroups  = [ "wheel" "networkmanager" ];
    #openssh.authorizedKeys.keys  = [ "ssh-dss AAAAB3Nza... alice@foobar" ];
  };

  environment.systemPackages = with pkgs; [
    neovim
    zsh
    oh-my-zsh
    wget
    git
    libgcc
    ripgrep
    fd
  ]; 

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}
