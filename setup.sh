chmod +x CADET_new_O0
chmod +x CADET_new_O2

chmod 777 O0_crashes/*
chmod 777 O2_crashes/*

apt-get update -y
apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential -y
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade pwntools
