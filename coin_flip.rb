# coding: utf-8

print 'Please enter a number of flips: '
n = gets.strip.to_i

# создаем два массива в которые будем записывать 
# количесвто выпаданий орла и решки соответственно
heads = []
tails = []

# подбрасываем монетку столько раз,
# сколько ввел пользователь выше
n.times do
	result = rand(0..1)
	# если выпал 0 добавляем 0 в orel_times
	heads << 0 if result == 0
	# если выпала 1 добавляем 1 в reshka_times
	tails << 1 if result == 1
end

puts "Number of Heads: #{heads.size}."
puts "Number of Tails: #{tails.size}."
puts "#{'H' * heads.size}#{'T' * tails.size}"
