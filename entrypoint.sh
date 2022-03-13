#!/bin/sh -l

mkp224o -d keys -n 2 $@

# sh -c "chown -R $USER:$GROUP ./keys"
sh -c "chmod -R 777 ./keys"
