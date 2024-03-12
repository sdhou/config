{ lib, config, pkgs, ... }:
with lib;
{
  time.timeZone = "Asia/Shanghai";
  nix.settings.substituters = [ "https://mirrors.cernet.edu.cn/nix-channels/store" ];
  documentation.enable = true;
  documentation.nixos.enable = true;
  environment.noXlibs = false;
  environment.systemPackages = with pkgs; [
    vim
    axel
    wget
    git
    cloc
    tree
    bat
    redis
    nginx
    docker
    nodePackages_latest.nodejs
    pm2
    yarn
    nodePackages.pnpm
    jdk
    maven
    go
    rclone
    wrk
    tig
    #telnet
    mariadb
    minio
    mycli
    jq
  ];
  services.redis.servers."".enable = true;
  system.stateVersion = "23.11";
  virtualisation.docker.enable = true;
  users.users.sdhou = {
    isNormalUser = true;
    extraGroups = [
      "docker"
    ];
  };
}
