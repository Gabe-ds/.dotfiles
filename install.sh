#!/bin/sh
# If an error occurs, exit the shell
set -e

# Install Homebrew
echo "----------Install Homebrew----------"
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "----------END----------"

# Install packages and Apps, Fonts via Homebrew
echo "----------Install Packages and Apps, Fonts----------"
brew bundle --file=.dotfiles/Brewfile
echo "----------END----------"

# Install .zshrc and .zprofile via Github
echo "----------For Screenshot----------"
mkdir ~/Pictures/Screenshots
echo "----------END----------"

# Install .zshrc and .zprofile via Github
echo "----------Install .zshrc and .zprofile via Github----------"
git clone https://github.com/Gabe-ds/.dotfiles.git
cp .dotfiles/.zshrc ~/.zshrc
cp .dotfiles/.zprofile ~/.zprofile
source .zshrc
source .zshrc
echo "----------END----------"

# Built Python Environment
echo "----------Built Python Environment----------"
pyenv install 3.8.2
pyenv global 3.8.2
echo "----------END----------"

# Set up Sytem Preferences via defauults write command
echo "----------Set up Sytem Preferences via defauults write command----------"
# Dock

# Dockのサイズを34にする
defaults write com.apple.dock tilesize -int 34
# スケールエフェクトにする
defaults write com.apple.dock mineffect -string "scale"
# ウィンドウのダブルクリックで拡大/縮小にする
defaults delete -g AppleActionOnDoubleClick
# ウィンドウをアプリケーションアイコンにしまう（チェックボックスオン）
defaults write com.apple.dock minimize-to-application -bool "true"
# 起動中のアプリケーションをアニメションで表示（チェックボックスオン）
defaults delete com.apple.dock launchanim
# Dockを自動的に表示/非表示（チェックボックスオフ）
defaults delete com.apple.dock autohide
# 起動済みのアプリケーションにインジケーターを表示（チェックボックスオン）
defaults delete com.apple.dock show-process-indicators
# Dockに最近使用したアプリケーションを表示しない（チェックボックスオフ）
defaults write com.apple.dock show-recents -bool "false"

# Finder

# 新しいウィンドウはデフォルトでホームディレクトリを開く
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
# ステータスバーの表示
defaults write com.apple.finder ShowStatusBar -bool true
# タブバーを表示
defaults write com.apple.finder ShowTabView -bool true
# Set sidebar icon size
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "1" && killall Finder

# Keyboard

# キーのリピートを環境設定よりも早くする
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1


# Launchpad

# 表示件数を7x9にする
defaults write com.apple.dock springboard-rows -int 7
defaults write com.apple.dock springboard-columns -int 9


# Mission Control

# Bottom right screen corner → Start screen saver
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0
# 最新の使用状況に基づいて操作スペースを自動的に並び替えるをオフにする（チェックボックスオフ）
defaults write com.apple.dock mru-spaces -bool false
# アプリケーションの切り替えで、アプリケーションのウインドウが開いている操作スペースに移動をオフにする（チェックボックスオフ）
defaults write -g AppleSpacesSwitchOnActivate -bool false
# ウインドウをアプリケーションごとにグループ化をオフにする（チェックボックスオフ）
defaults write com.apple.dock expose-group-apps
# ディスプレイごとに個別の操作スペースをオンにする（チェックボックスオン）
defaults delete com.apple.spaces spans-displays


# その他

# ネットワークディスクで'.DS_Store'を作らない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.LaunchServices LSQuarantine -bool false
# 復帰後すぐにパスワードを要求
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# クラッシュレポートを無効化する
defaults write com.apple.CrashReporter DialogType -string "none"
# スクリーンショットの影をなくす
defaults write com.apple.screencapture disable-shadow -bool true
# スクリーンショットの保存先を`~/Pictures/Screenshots`にする
defaults write com.apple.screencapture location ~/Pictures/Screenshots
# クラッシュ時にレポートダイアログを出さない
defaults write com.apple.CrashReporter DialogType none
# セキュリティとプライバシー > 一般 > ダウンロードした
# アプリケーションの実行許可で起動を妨げないようにする
sudo spctl --master-disable

killall Dock; killall SystemUIServer;
echo "----------END----------"

