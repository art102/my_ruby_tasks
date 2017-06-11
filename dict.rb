# encoding: UTF-8

# хеш со словами и переводами
words = {
	'dog' => ['собака','пёс'],
	'cat' => ['кошка','кот'],
	'girl' => ['девушка','девочка'],
	'boy' => 'мальчик',
	'boll' => 'мяч',
	'fire' => ['огонь','пожар']
}

loop do

  print 'Введите слово: '
  input = gets.strip.downcase
 
  # Если тим массив, то определяем рамер и выводим количество
  if words[input].class == Array
    puts "Переводов #{words[input].size}:"
    puts words[input]
  elsif input == ''
    exit
  elsif words[input].class == String
    puts "Перевод 1:"
    puts words[input]
  else
    puts 'Извините, но в словаре нет такого слова'
  end

end
