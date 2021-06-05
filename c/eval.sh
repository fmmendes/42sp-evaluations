#!/bin/sh
BASEDIR=$(dirname "$0")

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
