#!/bin/bash
######## dont forget to create the txt file 

for ip in $(cat listofips.txt); do
        nslookup $ip
done
