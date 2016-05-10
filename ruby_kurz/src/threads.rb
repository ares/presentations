require './e0x_threads_and_sockets.rb'

threads = []
5.times do |i|
  m = MorseServer.new(2000 + i)
  threads << Thread.new do
    loop do
      m.start
      m.listen
    end
  end
end

threads.each &:join
