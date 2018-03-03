#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m'

./waf distclean
./waf configure

for t in test0 test1 test2 test3
do
    printf "\n\nRunning ${t}\n"
    ./waf clean
    printf "\n${RED}cd ${t}${NC}:\n"
    cd ${t} 
    printf "\n${RED}../waf -j1 -v${NC}:\n"
    ../waf -j1 -v
    printf "\n${RED}../waf clean${NC}:\n"
    ../waf clean
    printf "\n${RED}../waf --targets=${t} -j1 -v${NC}:\n"
    ../waf --targets=${t} -j1 -v
    printf "\n${RED}cd ..${NC}:\n"
    cd ..
done
