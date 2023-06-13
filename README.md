# SQSYM Automatic Exploit Generation

## Environment
- Tested on Ubuntu 20.04.01

## Installation using Docker

~~~~{.sh}
# build docker image
$ docker build -t sqsym_aeg:cs250 .

# run docker image
$ docker run -it sqsym_aeg:cs250 /bin/bash
~~~~

## Run AEG
~~~~{.sh}
# Run exploit script
$ python3 exploit.py /path/to/binary /path/to/crashInput

# After determing the buffer size, it will ask you to input the address that you want to jump.
# It will be like this format.
# Enter the target address that you want to jump: 0x400ec9
# For this project that I give some binaries that you can try.
# The address that I recommend to jump is CADET_O0: 0x400de8 CADET_O2: 0x400c9e
~~~~

## Copy target binary to Docker Container
~~~~{.sh}
# check your container id
$ sudo docker container ls

# copy your target id to docker container
$ sudo docker cp /path/to/your/binary container_id:/home/
~~~~

## Note
Generally speaking, this work requries crash input from fuzzing tools.\
The crash input that I give in this repo is generated from my previous sqsym. Please cheeck [link](https://github.com/flygonty/sqsym)

Ideally, the whole project should be 1.fuzzing 2.find addres that you would like jump 3.exploit generation.\
Unfortunately, I don't have enough time to do this. Please wait for the further update!
