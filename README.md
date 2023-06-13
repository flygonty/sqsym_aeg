# SQSYM Automatic Exploit Generation

## Environment
- Tested on Ubuntu 20.04.01

## Installation using Docker

~~~~{.sh}
# build docker image
$ sudo docker build -t sqsym_aeg:cs250 .

# run docker image
$ sudo docker run -it sqsym_aeg:cs250 /bin/bash
~~~~

## Run AEG
~~~~{.sh}
# Run exploit script
$ python3 exploit.py /path/to/binary /path/to/crashInput
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
The crash input that I give in this repo is generated from my previous sqsym. Please cheeck out\

Ideally, the whole project should be 1.fuzzing 2.exploit generation. Unfortunately, I don't have enough time to do this. Please wait for the further update!\
