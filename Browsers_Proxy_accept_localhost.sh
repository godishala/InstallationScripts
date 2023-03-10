#!/bin/bash
# If the browser is  bypassing proxy requests for  "localhost/127.0.0.1",by which we are unable to intercept the requests
# we can intercept the request of localhost on any browser by tweaking /etc/hosts


echo "127.0.0.1 local" | sudo tee -a /etc/hosts

# Now navigate to the "localhost/127.0.0.1" with
# http://local / http://local:80 


