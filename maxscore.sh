#!/bin/bash
# maxscore.sh
# Jun yi
# cpsc298 intro to unix

SCORE=()

read -rp "Enter 5 scores: " SCORE[0]
MAX=${SCORE[0]}

for (( i=1; i < 5; i++))
do
    read -r SCORE[i]
        if [[ $SCORE[i] -gt $MAX]]; then
            MAX=${SCORE[i]}
        fi
done

echo "The highest scpre is $MAX"
echo "The scores are:"

for (( INDEX=0; INDEX < 5; INDEX++))
do
    echo "${SCORE[INDEX]} differs from max by $((MAX-SCORE[INDEX]))"
done