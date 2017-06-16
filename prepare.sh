#!/usr/bin/env bash
sudo apt-get install libgsl-dev libxml2-dev libssl-dev zlib1g-dev libxext-dev libxmu-dev libxi-dev gettext

cd ../parsec-3.0
for i in 0 1 2 3 4 5 6 7 8 9
do
    echo "Replacing '=item $i' to '=item C<$i>'"
    grep -rl "=item $i" * | xargs sed -i "s/=item $i/=item C<$i>/g"
done
cd ../parsec_utils

# Comment out the declaration of __mbstate_t in PARSEC:  lines 100-106 in [parsec_root_dir]/pkgs/libs/uptcpip/src/include/sys/bsd__types.h