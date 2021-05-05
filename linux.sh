red='\e[0;31m'
blue='\e[0;34m'
clear
banner() {
echo -en $blue '
m        "
 #      mmm    m mm   m   m  m   m
 #        #    #"  #  #   #   #m#
 #        #    #   #  #   #   m#m
 #mmmmm mm#mm  #   #  "mm"#  m" "m
'
}
line() {
echo -en $red '
 ( 0 ) install-RE
 ( 1 ) update
 ( 2 ) kali-install
 ( 3 ) kali-Nethurnter
 ( 4 ) Ubuntu
 ( 5 ) BackBox
 ( 6 ) Black-Arch
 ( 7 ) Arch-linux
 ( A ) about
'
}
banner
line
read -p "enter : " data
case $data in
0)
  echo "install-RE"
  pkg install wget openssl-tool proot -y
  pkg install termux-api -y
;;
1)
  echo "update "
  pkg update -y
  pkg upgrade -y
;;
2)
  echo "kali-install "
  pkg install wget openssl-tool proot -y
  wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh
  bash kali.sh
;;
3)
  echo "kali-Nethurnter "
  hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Nethunter/nethunter.sh
  bash nethunter.sh
;;
4)
  echo "Ubuntu "
  wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh
  bash ubuntu.sh
;;
5)
  echo "BackBox"
  wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/BackBox/backbox.sh
  bash backbox.sh
;;
6)
  echo "Black-Arch "
  bash Black-Arch.sh
;;
7)
  echo "Arch-linux"
  wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Arch/armhf/arch.sh
  bash arch.sh
;;
A*)
  termux-open-url https://youtube.com/channel/UCFm8ZvT8ZZ6RpqpWKRy9ZMg
;;

esac

