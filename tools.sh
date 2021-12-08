#!/bin/bash
sudo apt install net-tools

# 安装 Miniconda3
bash Miniconda3-py37_4.8.3-Linux-x86_64.sh

#rustup
chmod 777 rustup-init
./rustup-init

tar -xvf node-v9.5.0-linux-x64.tar.xz /opt
echo "export NODE_HOME=/opt/node-v16.13.1-linux-arm64/bin" >> ~/.bashrc
echo "export PATH=$NODE_HOME:$PATH" >> ~/.bashrc
source ~/.bashrc

conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda 
conda config --set show_channel_urls true


sudo apt-get install clangd-12
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100

vim -c "CocInstall coc-rls"
vim -c "CocInstall coc-clangd"
vim -c "CocInstall coc-pyright" 
vim -c "CocInstall coc-cmake" 
