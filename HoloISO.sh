# https://davejansen.com/installing-manjaro-on-the-gpd-win-max/
(cat /etc/os-release | grep VARIANT_ID | cut -d '"' -f 2):

pacman -Sy archiso
git clone https://github.com/bhaiest/holoiso/
sudo mkarchiso -v holoiso

recoveryinit

nmtui

mkdir /lib/firmware
mkdir /lib/firmware/edid
mkdir /lib/firmware/edid/gpdwinmax.bin

sudo mkdir -p /lib/firmware/edid && echo "AP///////wAJ5QMAAwAAAAEdAQOACxF4LwAAoFdJmyYQSE8AAAABAQEBAQEBAQEBAQEBAQEBwhogUDAAEFAQEDIAbKwAAAAYAAAA/ABUVjA4MFdVTS1OTDAKAAAA/QA8PBAQBwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMM=" | base64 --decode | sudo tee /lib/firmware/edid/gpdwinmax.bin
sudo mkdir -p /lib/firmware/edid && echo "AP///////wAJ5QMAAwAAAAEdAQOACxF4LwAAoFdJmyYQSE8AAAABAQEBAQEBAQEBAQEBAQEBwhogUDAAEFAQEDIAbKwAAAAYAAAA/ABUVjA4MFdVTS1OTDAKAAAA/QA8PBAQBwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMM=" | base64 --decode | sudo tee /lib/firmware/edid/gpdwinmax.bin

sudo nano /etc/mkinitcpio.conf
MODULES=(i915)

FILES="/lib/firmware/edid/gpdwinmax.bin"

sudo mkinitcpio -P

sudo nano /etc/default/grub

GRUB_CMDLINE_LINUX
video=eDP-1:800x1280 drm.edid_firmware=eDP-1:edid/gpdwinmax.bin fbcon=rotate:1
GRUB_CMDLINE_LINUX="video=eDP-1:800x1280 drm.edid_firmware=eDP-1:edid/gpdwinmax.bin fbcon=rotate:1"

sudo update-grub

sudo cp ~/.config/monitors.xml /var/lib/gdm/.config/monitors.xml



sudo pacman-mirrors --country United_Kingdom && sudo pacman -Syu
sudo pacman-mirrors --fasttrack && sudo pacman -Syu

sudo pacman -S mesa-git lib32-mesa-git
sudo pacman -S lm_sensors
sudo sensors-detect

echo "dev.i915.perf_stream_paranoid=0" | sudo tee /usr/lib/sysctl.d/60-mdapi.conf

sudo sysctl dev.i915.perf_stream_paranoid=0.

sudo pacman -S wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader lutris
mkdir -p ~/.steam/root/compatibilitytools.d;
tar -xvf ~/Downloads/Proton*GE*.tar.gz -C ~/.steam/root/compatibilitytools.d/

Creates an edid folder inside /lib/firmware if it does not already exist
sudo pacman -S extra/mesa multilib/lib32-mesa holo/gamescope

echo "IgnorePkg = gamescope mesa lib32-mesa" | sudo tee /etc/pacman.conf

tar -xvf ~/Downloads/MangoHud*.tar.gz;
cd ~/Downloads/MangoHud && ./mangohud-setup.sh install

mkdir -p ~/.config/MangoHud && cp /usr/share/doc/mangohud/MangoHud.conf.example ~/.config/MangoHud/MangoHud.conf

sudo chmod o+r /sys/class/powercap/intel-rapl\:0/energy_uj

