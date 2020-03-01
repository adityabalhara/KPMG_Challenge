#!/bin/bash
yum install jq
chmod u+x ec2-metadata
./ec2-metadata | jq --raw-input . | jq --slurp . | sed 's/:/": "/g' | sed 's/" /"/g' | sed 's/\[/\{/g' | sed 's/\]/\}/g' > metadata.json