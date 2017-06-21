# Author Artur Daukaev
# 21/06/2017

# Asking user
print 'Enter sentence: '
# Write users input to variable 'input'
input = gets.strip

# create array of words
arr_words = input.split(' ')

arr_words.each_with_index do |word, index|
	puts "#{index + 1}. #{word}"
end

puts "You entered #{arr_words.size} words."