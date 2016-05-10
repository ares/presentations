require 'socket'

class MorseServer

  attr_accessor :port

  def initialize(port)
    @port = port
  end
  
  def start
    puts "starting to listen on #{port}"
    @server = TCPServer.new port # Server bind to port 2000
    @client = @server.accept     # Wait for a client to connect


    port, @ip = Socket.unpack_sockaddr_in(@client.getpeername)
    puts 'accepted connection'
  end
  
  def listen
    hello = @client.gets
    if hello != ".....\n"
      puts "got #{hello.inspect} instead of '.....\n'"
      stop
    end
  
    puts 'sending hello'
    @client.puts "receiving"
  
    loop do
      message = @client.gets
      if message.nil?
        puts 'client has disconnected'
        break
      else
        command = message.chomp
      end
  
      case command
      when '-----'
        @client.puts 'thanks, bye bye'
        break
      else
        puts "got '#{command.inspect}' from #{@ip}"
      end
    end
  
    rescue Errno::EPIPE # client closed connection gracefully
      puts 'client has disconnected'
    rescue
      puts 'weird, bug in morse server, restarting'
    ensure
      stop 
  end
  
  def stop
    @client.puts "closing" rescue Errno::EPIPE
    @server.close
  end
end
