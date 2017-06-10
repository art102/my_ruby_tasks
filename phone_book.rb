# encoding: UTF-8
# This programm is small phonebook

# create new empty hash
@phone_book = {}

loop do
	
	#create new method for add last name & phone to hash
	def add_person
		@phone_book[@last_name] = @phone_number
	end

	print 'Введите фамилию или введите exit для выхода: '
	@last_name = gets.strip.capitalize
	
	if @phone_book[@last_name]
		puts "Такая фамилия уже есть"
	elsif @last_name == 'Exit'
			@phone_book.each do |last_name, phone|
				puts "#{last_name} - #{phone}"
			end
			exit
	else
		print 'Введите номер телефона: '
		@phone_number = gets.strip
		add_person
	end

end

