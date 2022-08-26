#!/usr/bin/env bash
set -o nounset
set -o pipefail

BASE_DIR=$( pwd )

RED='\033[0;31m'          # Red
GREEN='\033[0;32m'        # Green
YELLOW='\033[0;33m'       # Yellow
NC='\033[0m'

__info() {
  local TIME
  TIME=$( date "+%Y-%m-%dT%H:%M:%S" )
  echo -e "$GREEN$TIME             [INFO] $*$NC"
}

__error() {
  local TIME
  TIME=$( date "+%Y-%m-%dT%H:%M:%S" )
  echo -e "$RED$TIME             [ERROR] $*$NC"
}

__warn() {
  local TIME
  TIME=$( date "+%Y-%m-%dT%H:%M:%S" )
  echo -e "$YELLOW$TIME             [WARN] $*$NC"
}

__show_usage() {
  echo "用法:
  setup.sh <task.config>

根据 task.config 中的配置依次从 MongoDB 中导出数据"
}

# 下载 conf-stash
if [[ -d ~/.config/myconf ]]; then
  __info "[配置文件] 已存在"
else
  __warn "[配置文件] 不存在"
  __warn "[配置文件] 即将从 Github 下载"
  git clone https://github.com/DingDean/conf-stash.git ~/.config/conf-stash
fi

# 检查 homebrew
if ! command -v brew &> /dev/null; then
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # TODO: 配置国内的代理
else 
  __info "[Homebrew] 已安装"
fi

# 检查 Fish
if ! command -v fish &> /dev/null; then
  __warn "[Fish] 未安装"
  __warn "[Fish] 即将执行 brew install fish"
  brew install fish
else
  __info "[Fish] 已安装"
fi

# 检查 Tmux
if ! command -v tmux &> /dev/null; then
  __warn "[Tmux] 未安装"
  __warn "[Tmux] 即将执行 brew install tmux"
  brew install tmux
else
  __info "[Tmux] 已安装"
fi

# 检查 vim/nvim
if ! command -v nvim &> /dev/null; then
  __warn "[Neovim] 未安装"
  __warn "[Neovim] 即将执行 brew install neovim --HEAD"
  brew install neovim --HEAD
else
  __info "[Neovim] 已安装"
fi

# 检查 Rust
if ! command -v rustup &> /dev/null; then
  __warn "[Rust] 未安装"
  __warn "[Rust] 即将执行 "
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
else
  __info "[Rust] 已安装"
  # TODO: 配置 cargo 国内镜像
  # TODO: 配置 rustup 国内镜像
fi

# TODO: 使用 lsd 替换 ls
# TODO: 使用 repgrep 替换 grep
# TODO: 使用 bat 替换 cat
# TODO: 使用 delta 增强 git diff

__info  "安装成功"
