# install

- 设置 bios UMA Frame Buffer / Dedicated GPU Memory / VRAM carve-out 设为 512MB
- 设置 bios 关闭 Secure Boot
- 安装 ubuntu 24.04 lts
- 调通网络
- 设置 apt 源

```txt
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-backports main restricted universe multiverse

# 以下安全更新软件源包含了官方源与镜像站配置，如有需要可自行修改注释切换
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-proposed main restricted universe multiverse
# # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-proposed main restricted universe multiverse
```

- 更新系统 安装 oem 内核 重启系统 确认内核版本

```bash
sudo apt update
sudo apt full-upgrade
sudo apt install linux-oem-24.04
sudo reboot
uname -r
```

- 安装基础工具

```bash
sudo apt install -y \
    curl wget git htop nvme-cli smartmontools \
    build-essential pciutils usbutils unzip jq \
    python3-pip pipx
pipx ensurepath

```

- 安装和验证 ROCm

```bash
wget https://repo.radeon.com/amdgpu-install/7.2/ubuntu/noble/amdgpu-install_7.2.70200-1_all.deb
sudo apt install ./amdgpu-install_7.2.70200-1_all.deb
sudo apt update
sudo apt install python3-setuptools python3-wheel pipx
sudo usermod -a -G render,video $LOGNAME
sudo apt install rocm
sudo reboot

#验证：
uname -r
rocminfo | head
```

- 安装设置 amd ttm

```bash
pipx install amd-debug-tools
amd-ttm

#先设成 100GB：

amd-ttm --set 100
sudo reboot

#重启后再看：

amd-ttm
```

- 安装 amd 官方预编译 llama.cpp

```bash
mkdir -p ~/llama && cd ~/llama
wget -O llama-bin-linux.zip "https://repo.radeon.com/rocm/llama.cpp/linux/rocm-rel-7.2/llama-b7782-ubuntu-24.04-rocm-7.2.0-gfx110X-gfx115X-gfx120X-x64.zip"
unzip llama-bin-linux.zip
chmod +x llama-*
ls -lh

#先跑帮助确认：
./llama-server --help | head
```

- 准备模型
- 启动 llama-server

````bash
cd ~/llama
./llama-server \
  -m /data/models/qwen/你的模型.gguf \
  --host 0.0.0.0 \
  --port 8000 \
  -ngl 999 \
  -c 8192

另开一个终端测试：

curl http://127.0.0.1:8000/v1/models

如果通了，再测一次聊天：

curl http://127.0.0.1:8000/v1/chat/completions \
  -H "Content-Type: application/json" \
  -d '{
    "model":"default",
    "messages":[
      {"role":"user","content":"你好，做个自我介绍"}
    ]
  }'
````

- 安装 docker
- 安装运行配置 open webui
