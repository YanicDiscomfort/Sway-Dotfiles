#!/bin/sh

base=( dracut base-devel git neovim yazi bc zsh mesa amd-ucode unzip zip 7zip unrar-free btop )
desktop=( wayland xorg-xwayland sway swaylock swaybg uwsm ly swaync waybar rofi-wayland rofi-emoji pipewire wireplumber pipewire-pulse pipewire-alsa pipewire-jack pipewire-audio xdg-desktop-portal-wlr papirus-icon-theme udiskie)
applications=( thunar file-roller thunar-archive-plugin thunar-media-tags-plugin ffmpeg imagemagick ffmpegthumbnailer tumbler kitty qt5 qt6 qt6ct gtk3 gtk4 nwg-look pavucontrol mpv amberol vivaldi )
fonts=( nerd-fonts adobe-source-code-pro-fonts adobe-source-han-sans-cn-fonts adobe-source-han-sans-hk-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts adobe-source-han-sans-otc-fonts adobe-source-han-sans-tw-fonts adobe-source-han-serif-cn-fonts adobe-source-han-serif-hk-fonts adobe-source-han-serif-jp-fonts adobe-source-han-serif-kr-fonts adobe-source-han-serif-otc-fonts adobe-source-han-serif-tw-fonts adobe-source-sans-fonts adobe-source-serif-fonts cantarell-fonts gnu-free-fonts gsfonts noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra tex-gyre-fonts texlive-fontsrecommended ttf-dejavu ttf-droid ttf-hack ttf-inconsolata ttf-iosevka ttf-liberation ttf-roboto ttf-ubuntu-font-family xorg-fonts-misc )
flatpak=( xdg-desktop-portal-gtk flatpak )
yay=( go )
shenaniganz=( sl uwufetch viu )

sudo pacman -Syyu
sudo pacman -S ${base[@]} ${desktop[@]} ${applications[@]} ${fonts[@]} ${flatpak[@]} ${yay[@]} ${shenaniganz[@]}

sudo chsh -s /bin/zsh $USER

cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
rm -rf yay