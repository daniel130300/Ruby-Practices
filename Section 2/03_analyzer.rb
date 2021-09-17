
puts "Enter your first name: "
first_name = gets.chomp

puts "Enters your second name: "
second_name = gets.chomp

full_name = "#{first_name} #{second_name}" 

puts "Your full name is: #{full_name}"
puts "Your full name reversed is: #{full_name.reverse!}"
puts "Your name has #{full_name.gsub(" ", "").length} in it"