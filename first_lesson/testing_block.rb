require './block'

puts '- One instance of Block:'
pp Block.new( 'Hello, Cryptos!' )
puts "\n"

puts '- Another instance of Block:'
pp Block.new( 'Hello, Cryptos! - Hello, Cryptos! - Hello, Cryptos!' )
puts "\n"

puts '- Another instance of Block:'
pp Block.new( 'Your Name Here' )
puts "\n"

puts '- Another instance of Block:'
pp Block.new( 'Data Data Data Data' )
puts "\n"

puts '- Another instance of Block (the biggie string):'
pp Block.new( <<TXT )
  Data Data Data Data Data Data
  Data Data Data Data Data Data
  Data Data Data Data Data Data
  Data Data Data Data Data Data
  Data Data Data Data Data Data
TXT
puts "\n"

puts '- All the hashes (checksums/digests/fingerprints) are the same as above! Same input e.g. "Hello, Cryptos!", same hash.'
puts "\n"

