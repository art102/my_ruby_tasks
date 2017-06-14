# Создаем хеш с комбинациями
numbers = {
	100 => 10, 111 => 111, 222 => 20, 333 => 30, 444 => 40, 555 => 50, 666 => 6, 777 => 77, 
	888 => 80, 999 => 99, 123 => 123, 101 => 101, 202 => 2, 303 => 3, 404 => 4, 505 => 5
}	

#print 'Press Enter to start game...'
#gets

money = 100

print 'Would you like to play? (Y/N): '
user_input = gets.strip.capitalize

print 'How old are you?: '
user_age = gets.strip.to_i

# проверка на совершеннолетие
# если нет 18, то отправялем домой
if user_input == "Y" and user_age >= 18
	puts "Ok, let's play!"
else
	puts 'You are still a child! Go home!'
	exit
end

while money > 0

	# записывем случайное трехзначеое число
	# в переменную "x"
	x = rand(100..999)

	puts "Press Enter..."
	gets

	puts "Current combination: #{x}"

	# Проверяем на совпадение переменной "x"
	# с ключем хеша, если совпадает то прибавляем баланс.
	if numbers[x]
		money = money + numbers[x]
		puts "You win #{numbers[x]}$!"
	else
	# При каждой попытке снимаем 1$
		money = money - 1
	end
	
	puts "Your balance: #{money}"

end

puts "You lost all your money!"
