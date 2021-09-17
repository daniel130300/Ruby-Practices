puts "What is your first name?"

first_name = gets.chomp

puts "Thank you! Your firstname is #{first_name}"

begin
    puts "Enter the first number: "
    first_num = gets.chomp
    first_num = Integer(first_num)

rescue ArgumentError
    puts "Please enter a number"
    retry

end

begin
    puts "Enter the second number: "
    second_num = gets.chomp
    second_num = Integer(second_num)

rescue ArgumentError
    puts "Please enter a number"
    retry

end

result = ""

loop do
    puts "Choose the operation you want to do [sum / subtract / multiply / divide ]: "
    operation = gets.chomp

    case operation

    when "sum"
        result = first_num + second_num
        break
    when "subtract"
        result = first_num - second_num
        break
    when "multiply"
        result = first_num * second_num
        break
    when "divide"
        result = first_num/second_num
        break
    else
        puts "Please enter a valid option"
    end
end

puts "The result is #{result}"
