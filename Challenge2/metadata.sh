#!/bin/bash
yum install -y jq
chmod u+x ./ec2-metadata.sh
./ec2-metadata.sh | jq --raw-input . | jq --slurp . | sed 's/:/": "/g' | sed 's/" /"/g' | sed 's/\[/\{/g' | sed 's/\]/\}/g' > metadata.json
echo "Output stored in metadata.json"
