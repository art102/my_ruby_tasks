# coding: utf-8

print 'Enter tryies: '
n = gets.strip.to_i

# создаем два массива в которые будем записывать 
# количесвто выпаданий орла и решки соответственно
orel_times = []
reshka_times = []

# подбрасываем монетку стокльо раз,
# сколько ввел пользователь выше
n.times do
	result = rand(0..1)
	# если выпал 0 добавляем 0 в orel_times
	orel_times << 0 if result == 0
	# если выпала 1 добавляем 1 в reshka_times
	reshka_times << 1 if result == 1
end

puts "Орёл выпал: #{orel_times.size} раз."
puts "Решка выпала: #{reshka_times.size} раз."

