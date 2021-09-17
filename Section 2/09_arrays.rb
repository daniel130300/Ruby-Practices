# a = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# p a

# p a.last
# p a.first

# #Common array methods
 
# x = 1..100
# # p x
# # p x.class
# # p x.to_a.shuffle
# z = x.to_a.shuffle! #the ! at the end mutates the caller

# p z

# z.reverse!

# p z

# # Create a range of letter from a to z
# x = "a".."z"

# p y = x.to_a.shuffle
# p y.length

# # Ways to add item to the end of an array
# a.push(10)
# a << 11 
# a.append(10)

# #Add element to the beginning of the array
# a.unshift(0)

# #Get rid of duplicates
# a.uniq!

# #See if item is included in array
# a.include?(10)

# #Remove last item of array and get that value
# b = a.pop

# p a
# p b

# #Convert array into string
# a.join(", ")

# #Convert string into array
# # a.split("")

# #Convert a sentence into an array 
# w = %w(my name is Hector and Ruby is amazing)
# p w

# #iterate an array (preferred in ruby)
# w.each {|item| print item + " "}

# w.each do |item|
#     print item + ", "
# end

# #Select operator
# z = (1..100).to_a.shuffle
# p z
# p z.select {|number| number.odd?}

z = (1..100).to_a.shuffle

puts
20.times {print "-"}
puts
p z.methods

puts
20.times {print "-"}
puts

p z.delete_if {|num| num < 30}

