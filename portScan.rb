#1/usr/local/bin/ruby

require 'socket'

puts "What ip: "
ip = gets
puts "What port: "
port = gets
ip = ip.chomp
port = port.chomp

begin
    socket = TCPSocket.new(ip, port)
    status = "open"
rescue Errno::ECONNREFUSED, Errno::ETIMEDOUT
    status = "closed"
end
puts "Port #{port} is #{status}."