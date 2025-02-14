#!/bin/bash

start=$(date +%s.%N)

# Update package lists
sudo apt update -y

end=$(date +%s.%N)
runtime=$(echo "$end - $start" | bc)
echo "$runtime" >> /home/gcpuser/seed_workdir/temp.txt
echo "Runtime of update is \"$runtime\" seconds"

# Start timer for upgrade
start=$(date +%s.%N)

# Upgrade packages
sudo apt upgrade -y

end=$(date +%s.%N)
runtime=$(echo "$end - $start" | bc)
echo "$runtime" >> /home/gcpuser/seed_workdir/temp.txt
echo "Runtime of upgrade is \"$runtime\" seconds"
