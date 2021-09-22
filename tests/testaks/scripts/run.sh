#!/bin/bash 
set -e
source base-scenario.sh

jmeter -n -t "$scriptsDir/"http-post-request.jmx -l "$resultsDir/"original.jtl -Jusers="$concurrent_users" -Jduration=1200 -Jhost=bal.perf.test -Jport=443 -Jprotocol=https -Jpath=passthrough $payload_flags

