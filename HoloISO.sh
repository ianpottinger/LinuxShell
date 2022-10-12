sudo mkdir -p /lib/firmware/edid && echo "AP///////wAJ5QMAAwAAAAEdAQOACxF4LwAAoFdJmyYQSE8AAAABAQEBAQEBAQEBAQEBAQEBwhogUDAAEFAQEDIAbKwAAAAYAAAA/ABUVjA4MFdVTS1OTDAKAAAA/QA8PBAQBwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMM=" | base64 --decode | sudo tee /lib/firmware/edid/gpdwinmax.bin

pacman -S extra/mesa multilib/lib32-mesa holo/gamescope

echo "IgnorePkg = gamescope mesa lib32-mesa" | sudo tee /etc/pacman.conf

