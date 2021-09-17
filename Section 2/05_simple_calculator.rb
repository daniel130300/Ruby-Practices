puts "Simple Calculator"

25.times {print "-"}
puts 

puts "Enter the first num: "
num_1 = gets.chomp

puts "Enter the second num: "
num_2 = gets.chomp

puts "The first number added by the second number is #{num_1.to_f + num_2.to_f}"
puts "The first number subtracted by the second number is #{num_1.to_f - num_2.to_f}"
puts "The first number multiplied by the second number is #{num_1.to_f * num_2.to_f}"
puts "The first number divided by the second number is #{num_1.to_f / num_2.to_f}"
puts "The remainder of dividing #{num_1} by #{num_2} is #{num_1.to_f % num_2.to_f}"