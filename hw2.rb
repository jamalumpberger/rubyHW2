# # Create a program to analyze a large block of text 
# and report back on the frequency of each word in the text.

# # Start by sorting the text into a hash where each word is 
# a key with the word’s value being the amount of times it 
# has been used in the block:
# # {the: 10, john: 1, of: 15}

# # Once you’ve created this hash, 
# return the word that has been used the most

# # When you’re done, encapsulate your script 
# inside of a method that can analyze any block of text fed to it

puts "Insert block of text here: "
text_block = gets.chomp

separate_words = text_block.split(" ")
hash_count = Hash.new(0)
separate_words.each { |word| hash_count[word] += 1 }
hash_count = hash_count.sort_by {|x, y|}
hash_count.reverse!
puts hash_count[0]