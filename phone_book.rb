# encoding: UTF-8

# This programm is small phonebook

# create new empty hash
@phone_book = {}

loop do
	
	#create new method for add last name & phone to hash
	def add_person
		@phone_book[@name] = @phone_number
	end

	print 'Enter name (Press "Enter" to exit): '
	@name = gets.strip.capitalize
	
	if @phone_book[@name]
		puts "Already exists!"
	elsif @name == ''
			break
	else
		print 'Enter phone number: '
		@phone_number = gets.strip
		add_person
	end

end

@phone_book.each do |name, phone|
	puts "Name: #{name}, Phone: #{phone}"
end