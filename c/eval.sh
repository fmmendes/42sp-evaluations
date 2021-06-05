#!/bin/sh
BASEDIR=$(dirname "$0")
norminette=$(which norminette)

# Colors
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
NC='\033[0m' # No Color

lista=$1
user=$2
repo=$3

if [ -z $lista ]; then
    printf "\n${Red}Faltou informar qual lista está sendo avaliada${NC}\n\n"
    exit 1
fi

if [ -z $user ]; then
    printf "\n${Red}Faltou informar qual lista está sendo avaliada${NC}\n\n"
    exit 1
fi

if [ -z $user ]; then
    printf "\n${Red}Faltou informar qual lista está sendo avaliada${NC}\n\n"
    exit 1
fi

if [ -d $user ]; then
	rm -fr $user;
fi

printf "${Blue}= Clonning files ===============================================================${NC}\n"

git clone $repo $user

printf "${Blue}= $lista files ====================================================================${NC}\n"

cd $user
for i in $(ls -d */); do
	Folder=${i%%/}
	printf "${Yellow}= ${Folder} =========================================================================${NC}\n"
	if [ -f $Folder/*.c ]; then
		File=$(ls -p $Folder/*.c | egrep -v /$)
		printf "${Yellow}${File}${NC} : "
		Norme=$($norminette -R CheckForbiddenSourceHeader $Folder/*.c | xargs | cut -d ' ' -f3)
		printf "${Blue}Norme:${NC} "
		if [ -z $Norme ]; then
			printf "${Green}OK${NC} : ${Yellow}GCC${NC} : "
			if ! [ -f $BASEDIR/C00/$Folder/main.c ]; then
				printf "\n${Red}Arquivo main não encontrado.\n$BASEDIR/C00/$Folder/main.c${NC}\n\n"
				exit 1
			fi
			GCC=$(gcc -Wall -Wextra -Werror $BASEDIR/C00/$Folder/main.c $Folder/*.c -o $Folder/a.out 2>&1 | head -c1)
			if [ -z $GCC ]; then
				printf "${Green}OK${NC}\n${Yellow}OUTPUT:${NC}\n"
				$Folder/a.out
				rm -fr $Folder/a.out
				echo
			else
				printf "${Red}KO${NC}\n"
			fi
			echo
		else
			printf "${Red}KO $Norme ${NC}\n"
		fi
	else
		printf "${Red}File Not Found${NC} : ${Red}KO${NC}\n"
	fi
done