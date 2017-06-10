# encoding: UTF-8

names = []

while 2 + 2 == 4
  print "Кого добавить в список?: "
  user = gets.strip.capitalize
   
  if user == ""
    names.each_with_index do |names, index|
      puts "#{index + 1}. #{names}"
    end
  exit
  end

  names << user

end
