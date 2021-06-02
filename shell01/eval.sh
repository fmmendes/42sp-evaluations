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

printf "\n${Blue}>> EX01 \n"
printf "Conteúdo de 'print_groups.sh'${NC}\n"
cat ./ex01/print_groups.sh
echo ""
printf "${Blue}Executar 'print_groups.sh'${NC}\n"
export FT_USER=student
sh ./ex01/print_groups.sh
echo ""
export FT_USER=staff
sh ./ex01/print_groups.sh
unset FT_USER
echo ""

printf "\n${Blue}>> EX02 \n"
printf "Conteúdo de 'find_sh.sh'${NC}\n"
cat ./ex02/find_sh.sh
printf "${Blue}Executar 'find_sh.sh'${NC}\n"
sh ./ex02/find_sh.sh
echo ""

printf "${Blue}>> EX03 \n"
printf "Conteúdo de 'count_files.sh'${NC}\n"
cat ./ex03/count_files.sh
printf "${Blue}Executar 'count_files.sh'${NC}\n"
sh ./ex03/count_files.sh
echo ""

printf "${Blue}>> EX04 \n"
printf "Conteúdo de 'MAC.sh'${NC}\n"
cat ./ex04/MAC.sh
printf "${Blue}Executar 'MAC.sh'${NC}\n"
sh ./ex04/MAC.sh
echo ""

printf "${Blue}>> EX05 \n"
printf "\"\\?\$*'MaRViN'*\$?\\\" existe?${NC}\n"
ls -lRa ./ex05/*MaRV* | cat -e
printf "${Blue}Conteúdo de \"\\?\$*'MaRViN'*\$?\\\" ${NC}\n"
cat ./ex05/\"\\?\$*\'MaRViN\'*\$?\\\"
echo ""

printf "${Blue}>> EX06 \n"
printf "Conteúdo de 'skip.sh'${NC}\n"
cat ./ex06/skip.sh
printf "${Blue}Executar 'skip.sh'${NC}\n"
sh ./ex06/skip.sh
echo ""

printf "${Blue}>> EX07 \n"
printf "Conteúdo de 'r_dwssap.sh'${NC}\n"
cat ./ex07/r_dwssap.sh
printf "${Blue}Executar 'r_dwssap.sh'${NC}\n"
export FT_LINE1=7
export FT_LINE2=15
sh ./ex07/r_dwssap.sh
unset FT_LINE1
unset FT_LINE2
echo ""

printf "\n${Blue}>> EX08 \n"
printf "Conteúdo de 'add_chelou.sh'${NC}\n"
cat ./ex08/add_chelou.sh
printf "${Blue}Executar 'add_chelou.sh'${NC}\n"
export FT_NBR1=\\\'?\"\\\"\'\\
export FT_NBR2=rcrdmddd
sh ./ex08/add_chelou.sh
FT_NBR1=\\\"\\\"!\\\"\\\"!\\\"\\\"!\\\"\\\"!\\\"\\\"!\\\"\\\"
FT_NBR2=dcrcmcmooododmrrrmorcmcrmomo
sh ./ex08/add_chelou.sh
unset FT_NBR1
unset FT_NBR2
echo ""

printf "${Blue}End${NC}"
cd ..
echo ""
