item = [:rock, :scissors, :paper]

rand_item = item[rand(0..2)]

print '(R)ock, (S)cissors, (P)aper?: '
s = gets.strip.capitalize

if s == "R"
	user_choice = :rock
elsif s == "S"
	user_choice = :scissors
elsif s == "P"
	user_choice = :paper
else
	puts "Can't understand what you want."
	exit
end

puts "Computer choice is #{rand_item}."

if rand_item == :rock && user_choice == :scissors
  puts 'Computer win.'
elsif rand_item == :scissors && user_choice == :rock
  puts 'User  win.'
elsif rand_item == :paper && user_choice == :rock
  puts 'Computer win.'
elsif rand_item == :rock && user_choice == :paper
  puts 'User win.'
elsif rand_item == :scissors && user_choice == :paper
  puts 'Computer win.'
elsif rand_item == :paper && user_choice == :scissors
  puts 'User win.'
elsif rand_item == user_choice
  puts 'Nobody wins'
end
