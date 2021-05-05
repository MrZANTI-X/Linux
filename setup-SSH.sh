red='\e[0;31m'
line() {
echo -en $red '
 [ 1 ] kali
 [ 2 ] BackBox
 [ 3 ] Ubuntu
 [ 4 ] Arch-linux

'
}
line
read -p "enter : " save
case $save in
1)
  echo "kali "
  wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/SSH/Apt/ssh-apt.sh
  bash ssh-apt.sh
;;
2)
  echo "BackBox "
  wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/SSH/Apt/ssh-apt.sh 
  bash ssh-apt.sh
;;
3)
  echo "Ubuntu "
  wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/SSH/Apt/ssh-apt.sh 
  bash ssh-apt.sh
;;
4)
  echo "Arch-linux "
  pacman -Sy --noconfirm wget && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/SSH/Pacman/ssh-pac.sh
  bash ssh-pac.sh
;;
esac
