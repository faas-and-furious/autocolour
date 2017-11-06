#!/bin/bash

export nano=`date +%s%N`

cd /tmp/

/root/autocolor.sh -m recolor -c separate - "$nano.jpg"
cat "$nano.jpg"

rm "$nano.jpg"

