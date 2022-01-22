require 'digest'

puts 'Executing file'
puts "\n \n"

puts '- Classic Bitcoin uses the SHA256 hash algorithm. Let’s try:'
puts Digest::SHA256.hexdigest( 'Hello, Cryptos!' )
puts Digest::SHA256.hexdigest( 'Hello, Cryptos! - Hello, Cryptos! - Hello, Cryptos!' )
puts Digest::SHA256.hexdigest( 'Your Name Here' )
puts Digest::SHA256.hexdigest( 'Data Data Data Data' )
puts "\n \n"

puts '- The resulting hash is always 256-bit in size or 64 hex(adecimal) chars (0-9,a-f) in length'
puts 'even if the input is less than 256-bit or much bigger than 256-bit:'
puts Digest::SHA256.hexdigest( <<TXT )
  Data Data Data Data Data Data
  Data Data Data Data Data Data
  Data Data Data Data Data Data
  Data Data Data Data Data Data
  Data Data Data Data Data Data
TXT
puts Digest::SHA256.hexdigest( 'Hello, Cryptos!' ).length
puts Digest::SHA256.hexdigest( 'Hello, Cryptos! - Hello, Cryptos! - Hello, Cryptos!' ).length
puts "\n \n"

puts '- Let’s convert from hex (base 16) to decimal (integer) number (base 10):'
puts hex = Digest::SHA256.hexdigest( 'Hello, Cryptos!' )
puts hex.to_i( 16 )
puts "\n \n"

puts '- And convert to 256-bits (32-bytes) binary number (base 2) as a string:'
puts hex.to_i( 16 ).to_s( 2 )
puts "\n \n"

puts '- SHA256 == Secure Hash Algorithms 256 Bits'
puts '- Let’s build blocks (secured) with crypto hashes. First let’s define a block class in block.rb file'
