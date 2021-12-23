#!/bin/bash -x

isparttime=1
isfulltime=2
emprateperhr=20
randomcheck=$((RANDOM%3))
case $randomcheck in
                $isparttime)
                      emphrs=4
                    ;;
                 $isfulltime)
                      emphrs=8
                     ;;
                 *)
                      emphrs=0
                     ;;
esac
salary=$(($emphrs*$emprateperhr))
