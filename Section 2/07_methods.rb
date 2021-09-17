puts "Simple Calculator"

25.times {print "-"}
puts 

puts "Enter the first num: "
num_1 = gets.chomp

puts "Enter the second num: "
num_2 = gets.chomp

def add(first_num, second_num)
    first_num.to_f + second_num.to_f #Automatically implied return on the last line of a function
end

def subtract(first_num, second_num)
    first_num.to_f - second_num.to_f 
end

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def remainder(first_num, second_num)
    first_num.to_f % second_num.to_f
end

puts "The first number added by the second number is #{add(num_1, num_2)}"
puts "The first number subtracted by the second number is #{subtract(num_1, num_2)}"
puts "The first number multiplied by the second number is #{multiply(num_1, num_2)}"
puts "The first number divided by the second number is #{divide(num_1, num_2)}"
puts "The remainder of dividing #{num_1} by #{num_2} is #{remainder(num_1, num_2)}"

