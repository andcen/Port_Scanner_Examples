#!/usr/bin/pwsh
$ip = Read-Host -Prompt 'Input ip: '
$port = Read-Host -Prompt 'Input port: '

if (test-connection $ip -TCPPort $port) {
    write-host "Port $port is open"
}
else {
    write-host "Port $port is closed"
}