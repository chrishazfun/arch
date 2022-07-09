mkdir ~/.config/dunst; cp dunstrc .config/dunst/dunstrc

sudo sed -i 's/^#blank_password = true/blank_password = true/' /etc/ly/config.ini
sudo sed -i 's/^#hide_borders = true/hide_borders = true/' /etc/ly/config.ini

sudo sed -i 's/^#ParallelDownloads = 5/ParallelDownloads = 15/' /etc/pacman.conf
sudo sed -i 's/^#Color/Color/' /etc/pacman.conf

sudo sed -i 's/-j2/-j$(nproc)/;s/^#MAKEFLAGS/MAKEFLAGS/' /etc/makepkg.conf

sudo sed -i 's/^#DefaultTimeoutStopSec=90s/DefaultTimeoutStopSec=10s/g' /etc/systemd/system.conf
sudo systemctl daemon-reload

git clone https://github.com/Nefelim4ag/Ananicy.git /tmp/ananicy
cd /tmp/ananicy; sudo make install; sudo systemctl enable ananicy -y; cd

git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin; cd /tmp/yay-bin; makepkg -si; cd
yay -Sy --noconfirm ly waterfox-g4-bin qview qwinff obs-websocket-bin zoom discord_arch_electron duckstation-git rpcs3-bin itch-bin polymc-bin proton-ge-custom-bin heroic-games-launcher-bin ttf-ms-fonts sublime-text-4 video2x realsr-ncnn-vulkan-bin

flatpak install -y --noninteractive flathub com.neatdecisions.Detwinner org.firestormviewer.FirestormViewer
