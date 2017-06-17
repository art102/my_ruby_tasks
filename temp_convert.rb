# массив со значениями температуры за 10 дней
temp = [36, 20, 23, 24, 25, 22, 20, 19, 16, 13, 11]

# массив со значениями в единицах Фаренгейта
# используем метод map
temp_far = temp.map { |inst| (9.0 / 5.0 * inst.to_f + 32.0).floor }

# массив со значениями в Кельвинах
# используем метод map
temp_kelvin = temp.map { |inst| (273.15 + inst).floor }

puts "В градусах Цельсия: "
puts temp.join(' ')

puts 'По Фаренгейту: '
puts temp_far.join(' ')

puts 'По Кельвину: '
puts temp_kelvin.join(' ')

