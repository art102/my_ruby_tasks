# описываем класс Animal
class Animal

	def initialize name
		@name = name
	end

	def run
		puts "#{@name} is running..."
	end

	def sleep
		puts "#{@name} is sleeping..."
	end

end

class Dog < Animal

	def initialize
		super 'dog'
	end

	def barking
		puts 'Woof-woof...'
	end

end

class Cat < Animal

	def initialize
		super 'cat'
	end

	def meow
		puts 'Meoooooooooow...'
	end

end

dog1 = Dog.new
dog1.run
dog1.barking 

cat1 = Cat.new
cat1.meow
cat1.sleep
