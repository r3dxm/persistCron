!/bin/bash

host = '127.0.0.1'
syn = $(nmap -n -sn -PS80,443 $host -oG - | awk '/Up$/{print $2}')
ack = $(nmap -n -sn -PA80,443 $host -oG - | awk '/Up$/{print $2}')
udp = $(nmap -n -sn -PU1337,11111 $host -oG - | awk '/Up$/{print $2}')
up = false

if [$syn == $host || $ack == $host || $udp == $host]; then
    $up = true
fi

if [$up == false]; then
    sendmail -t < ./email.txt
fi

