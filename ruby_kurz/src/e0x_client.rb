require 'socket'

client = TCPSocket.new 'localhost', ARGV[0] || 2000
client.puts '.....'

puts client.gets
client.puts '.-'
client.puts '-----'
puts client.gets

client.close
