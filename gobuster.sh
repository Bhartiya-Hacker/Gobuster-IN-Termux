#!/data/data/com.termux/files/usr/bin/bash
clear
echo "
    +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
     |G|O|B|U|S|T|E|R|  |i|n|  |T|e|r|m|u|x|
    +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
           +-+-+ +-+-+-+-+-+-+-+-+-+-+
              |b|y| |BHARTIYA HACKER|
           +-+-+ +-+-+-+-+-+-+-+-+-+-+
"

center() {
  termwidth=$(stty size | cut -d" " -f2)
  padding="$(printf '%0.1s' ={1..500})"
  printf '%*.*s %s %*.*s\n' 0 "$(((termwidth-2-${#1})/2))" "$padding" "$1" 0 "$(((termwidth-1-${#1})/2))" "$padding"
}

# Loading spinner
center " Loading..."
source <(echo "c3Bpbm5lcj0oICd8JyAnLycgJy0nICdcJyApOwoKY291bnQoKXsKICBzcGluICYKICBwaWQ9JCEKICBmb3IgaSBpbiBgc2VxIDEgMTBgCiAgZG8KICAgIHNsZWVwIDE7CiAgZG9uZQoKICBraWxsICRwaWQgIAp9CgpzcGluKCl7CiAgd2hpbGUgWyAxIF0KICBkbyAKICAgIGZvciBpIGluICR7c3Bpbm5lcltAXX07IAogICAgZG8gCiAgICAgIGVjaG8gLW5lICJcciRpIjsKICAgICAgc2xlZXAgMC4yOwogICAgZG9uZTsKICBkb25lCn0KCmNvdW50" | base64 -d)

echo
center "*** Dependencies installation..."
apt install golang

echo 
center "***Installing Gobuster.."
go install github.com/OJ/gobuster/v3@latest

echo 
center "***Setting up go buster.."
cp go/bin/gobuster $PREFIX/bin

echo
center "*"
echo -e "\033[32m Installation complete. \n Launch gobuster by executing: gobuster -h\033[0m"
center "*"
