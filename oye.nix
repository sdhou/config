{ lib, config, pkgs, ... }:
with lib;
{
  time.timeZone = "Asia/Shanghai";
  i18n.defaultLocale = "zh_CN.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "zh_CN.UTF-8";
    LC_IDENTIFICATION = "zh_CN.UTF-8";
    LC_MEASUREMENT = "zh_CN.UTF-8";
    LC_MONETARY = "zh_CN.UTF-8";
    LC_NAME = "zh_CN.UTF-8";
    LC_NUMERIC = "zh_CN.UTF-8";
    LC_PAPER = "zh_CN.UTF-8";
    LC_TELEPHONE = "zh_CN.UTF-8";
    LC_TIME = "zh_CN.UTF-8";
  };
  networking.firewall.enable = false;
  services.openssh.enable = true;
  nix.settings.substituters = [ "https://mirrors.cernet.edu.cn/nix-channels/store" ];
  documentation.enable = true;
  documentation.nixos.enable = true;
  #security.sudo.extraRules= [
  #  { users = [ "sdhou" ];
  #    commands = [
  #      { command = "ALL";
  #        options= [ "NOPASSWD" ];
  #      }
  #    ];
  #  }
  #];
  environment.noXlibs = false;
  environment.systemPackages = with pkgs; [
    axel
    bat
    cloc
    docker
    go
    git
    htop
    jdk
    jq
    mariadb
    minio
    mycli
    maven
    nginx
    nodePackages_latest.nodejs
    nodePackages.pnpm
    pm2
    vim
    wget
    tree
    unzip
    redis
    yarn
    rclone
    wrk
    tig
  ];
  services.redis.servers."".enable = true;
  system.stateVersion = "23.11";
  virtualisation.docker.enable = true;
  virtualisation.docker.enableOnBoot = true;
  users.users.sdhou = {
    isNormalUser = true;
    extraGroups = [
      "docker"
    ];
  };
}
