#!/bin/bash

ssh-copy-id -p 51022 hduser@awa-test-nn1
ssh-copy-id -p 51022 hduser@awa-test-jn0
ssh-copy-id -p 51022 hduser@awa-test-dn0
ssh-copy-id -p 51022 hduser@awa-test-dn1

#echo -n "awa2021#" | su - hduser -c "/home/startStep2.sh"
#su - hduser -c "sh /home/startStep2.sh"
