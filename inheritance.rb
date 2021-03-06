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

	def jump
		puts "#{@name} is jumping..."
	end

end

#класс Dog
class Dog < Animal
	# наследуем конструктор из класса Animal
	def initialize
		super 'dog'
	end

	def barking
		puts 'Woof-woof...'
	end

end

#класс Cat
class Cat < Animal
	# наследуем конструктор из класса Animal
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
dog1.jump

cat1 = Cat.new
cat1.meow
cat1.sleep
