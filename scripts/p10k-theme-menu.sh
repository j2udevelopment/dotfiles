#!/bin/zsh
set -e

WHITE_ON_GREEN="\033[37;42m"
WHITE_ON_RED="\033[37;41m"
END_OF_COLOR="\033[0m"

echo -e $WHITE_ON_GREEN"Select Oh My Zsh profile you would like to use:$END_OF_COLOR\n1)Spring\n2)WVU\n3)Quit"

read P10K_PROFILE

case $P10K_PROFILE in 
  1|2 ) 
    ./set-p10k-theme.sh $P10K_PROFILE
    ;;
  3 ) 
    echo -e $WHITE_ON_GREEN"Quitting..."$END_OF_COLOR;
    exit;;    
  * )
    echo -e $WHITE_ON_RED"Unrecognized Option"$END_OF_COLOR;
    exit;;        
esac