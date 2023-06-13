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

