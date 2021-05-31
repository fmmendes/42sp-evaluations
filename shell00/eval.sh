#!/bin/sh
# Declaração de cores
# Colors
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
NC='\033[0m' # No Color

user=$1
repo=$2

clear

printf "${Yellow}>> Begin${NC}\n"
printf "${Green}>> Cloning${NC}\n"

git clone $repo $user

cd $user

printf "${Blue}>> EX00 : ${NC}"
if [ $(cat ex00/z | cat -e) = 'Z' ]; then
	printf "${Green}OK${NC}\n"
else
	printf "${Red}KO${NC}\n"
fi
echo ""

printf "${Blue}>> EX01 : Descompactando : ${NC}\n"
tar xf ./ex01/testShell00.tar
printf "${Blue}Sample Output : \n"
printf "${Yellow}-r--r-xr-x 1 XXXXXXXX XXXXXXXX 40 2021-06-01 23:42:00.000000000 +0000 testShell00\n"
printf "${Blue}Output : ${NC}\n"
ls -l --full-time | grep -i testShell00
rm testShell00 -f
echo ""

printf "${Blue}>> EX02 : Descompactando : ${NC}\n"
tar xf ./ex02/exo2.tar
printf "${Blue}Sample Output : \n"
printf "${Yellow}drwx--xr-x 2 XXXXXXXX XXXXXXXX  6 2021-06-01 22:47:00.000000000 +0000 test0
-rwx--xr-- 1 XXXXXXXX XXXXXXXX  4 2021-06-01 21:46:00.000000000 +0000 test1
dr-x---r-- 2 XXXXXXXX XXXXXXXX  6 2021-06-01 22:45:00.000000000 +0000 test2
-r-----r-- 2 XXXXXXXX XXXXXXXX  1 2021-06-01 23:44:00.000000000 +0000 test3
-rw-r----x 1 XXXXXXXX XXXXXXXX  2 2021-06-01 23:43:00.000000000 +0000 test4
-r-----r-- 2 XXXXXXXX XXXXXXXX  1 2021-06-01 23:44:00.000000000 +0000 test5
lrwxrwxrwx 1 XXXXXXXX XXXXXXXX  5 2021-06-01 22:20:00.000000000 +0000 test6 -> test0\n"
printf "${Blue}Output : ${NC}\n"
ls -l --full-time | grep -i test
rm -rf test0 test2
rm test1 test3 test4 test5 test6 -f
echo ""

printf "${Blue}>> EX03 \n"
printf "Conteúdo de 'midLS'${NC}\n"
cat ./ex03/midLS
echo ""
printf "${Blue}Executar 'midLS'${NC}\n"
sh ./ex03/midLS
echo ""

printf "${Blue}>> EX04 \n"
printf "Conteúdo de 'git_commit.sh'${NC}\n"
cat ./ex04/git_commit.sh
echo ""
printf "${Blue}Executar 'git_commit.sh'${NC}\n"
sh ./ex04/git_commit.sh
echo ""

printf "${Blue}>> EX05 \n"
printf "Conteúdo de 'git_ignore.sh'${NC}\n"
cat ./ex05/git_ignore.sh
echo ""
printf "${Blue}Criar 'a.txt' e acrescentar no arquivo '.gitignore'${NC}\n"
touch ./ex05/a.txt
echo "a.txt" > ./ex05/.gitignore
printf "${Blue}Executar 'git_ignore'${NC}\n"
sh ./ex05/git_ignore.sh
rm ./ex05/a.txt ./ex05/.gitignore -f
echo ""

printf "${Blue}>> EX06 \n"
printf "Conteúdo de 'b'${NC}\n"
cat ./ex06/b | cat -e
echo ""

printf "${Blue}>> EX07\n"
printf "Conteúdo de 'clean'${NC}\n"
cat ./ex07/clean
echo ""
printf "${Blue}Criar arquivos de teste 'a~' '#a#' '#a'e 'a#'${NC}\n"
touch ./ex07/"a~" ./ex07/"#a#" ./ex07/"#a" ./ex07/"a#"
printf "${Blue}Executar 'clean'${NC}\n"
sh ./ex07/clean
printf "${Blue}Remanescentes${NC}\n"
ls -l ./ex07
rm ./ex07/"#a" ./ex07/"a#" -f
echo ""

printf "${Blue}>> EX08 \n"
printf "Conteúdo de 'ft_magic'${NC}\n"
cat ./ex08/ft_magic
printf "${Blue}Criar arquivo '42'${NC}\n"
echo "0000000000000000000000000000000000000000042" > ./ex08/42
printf "${Blue}Testar arquivo 'ft_magic'${NC}\n"
file -m ./ex08/ft_magic ./ex08/42
rm -f ./ex08/42
echo ""

printf "${Blue}End ${NC}"

cd ..
echo ""
