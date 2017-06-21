print 'Enter sentence: '
input = gets.strip

arr_words = input.split(' ')

arr_words.each_with_index do |word, index|
	puts "#{index + 1}. #{word}"
end

puts "You entered #{arr_words.size} words."