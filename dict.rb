# encoding: UTF-8

words = {
	'dog' => ['собака','пёс'],
	'cat' => ['кошка','кот'],
	'girl' => ['девушка','девочка'],
	'boy' => ['мальчик'],
	'boll' => ['мяч'],
	'fire' => ['огонь','пожар']
}

loop do

  print 'Введите слово: '
  input = gets.strip.downcase

  if input == ''
    exit
  elsif words.include?(input)
    puts "Переводов #{words[input].size}:"
    puts words[input]
  else
    puts 'Извините, но в словаре такого слова нет.'
  end

end
