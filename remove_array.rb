# create new array with students name
students = %w[harry ron hermiona nevil polumna malfoy]

while students.size > 0
  students.each_with_index do |name, index|
    puts "#{index + 1}. #{name}"
  end
  
  print 'Who you want to kill?: '
  remove = gets.strip.to_i
  remove = remove - 1 
  
  # delete item from array
  students.delete_at remove 
  
end
