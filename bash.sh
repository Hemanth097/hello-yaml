#!/bin/bash


start=date +%s.%N
sudo apt update -y
end=`date +%s.%N`
echo '$end - $start' >> /home/gcpuser/seed_workdir/temp1.txt
echo 'Runtime of upgrade is \"$end - $start\" seconds'
sudo apt upgrade -y;
end=`date +%s.%N`
echo '$end - $start' >> /home/gcpuser/seed_workdir/temp2.txt
echo 'Runtime of upgrade is \"$end - $start\" seconds'
