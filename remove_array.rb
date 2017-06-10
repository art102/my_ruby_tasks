@students = %w[harry ron hermiona nevil polumna malfoy]

def print_name
  @students.each_with_index do |name, index|
    puts "#{index + 1}.#{name}"
  end
end

print_name

while @students.size > 0
  print 'Кого удалить?: '
  remove = gets.strip.to_i
  remove = remove - 1
  
  if remove == 0
    @students.delete_at(0)
  elsif remove == 1
    @students.delete_at(1)
  elsif remove == 2
    @students.delete_at(2)
  elsif remove == 3
    @students.delete_at(3)
  elsif remove == 4
    @students.delete_at(4)
  elsif remove == 5
    @students.delete_at(5)
  else
    puts "Вы ввели неверную команду"
  end
  print_name
end
