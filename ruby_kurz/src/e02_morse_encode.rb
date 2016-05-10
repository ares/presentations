# write a script that uses MORSE constant from morse.rb and
# defines a method which translates given argument to morse code
# as a letter separator use | character, spaces in text should
# be left as spaces
#
# e.g. encode('hello world') should return '....|.|.-..|.-..|--- .--|---|.-.|.-..|-..'

require './morse.rb'
def encode(string)
  string.split(' ').map do |word|
    word.chars.map { |char| MORSE[char] }.join('|')
  end.join(' ')
end

puts encode('hello world')
