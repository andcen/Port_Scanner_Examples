#!/usr/bin/perl

use IO::Socket;

print "Enter ip ";
my $ip = <STDIN>;
chomp $ip;
print "Enter port ";
my $port = <STDIN>;
chomp $port;

$socket = IO::Socket::INET->new(PeerAddr => $ip, PeerPort =>$port, Proto => 'tcp', Timeout => 1);
if($socket)
{
    print "\r = Port $port is open.\n";
}
