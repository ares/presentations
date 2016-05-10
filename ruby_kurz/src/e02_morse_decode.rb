# write a script that uses MORSE constant from morse.rb and
# defines a method which translates given argument from morse code
# to greek alphabet
#
# e.g. decode('....|.|.-..|.-..|--- .--|---|.-.|.-..|-..') should return 'hello world'

require './morse.rb'
def decode(string)
  string.split(' ').map do |word|
    word.split('|').map { |char| MORSE.detect { |k, v| v == char}[0] }.join
  end.join(' ')
end

puts decode('....|.|.-..|.-..|--- .--|---|.-.|.-..|-..')
