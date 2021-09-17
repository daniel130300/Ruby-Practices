first_name = "Hector"
last_name = "Lopez"

# String concatenation

puts first_name + " " + last_name

# String interpolation

puts "My firstname is #{first_name} and my lastname is #{last_name}"

# String interpolation only works with double quotes 
puts 'My firstname is #{first_name} and my lastname is #{last_name}'

fullname = "#{first_name} #{last_name}"
puts fullname

#Methods and how to find them

#Types
puts fullname.class
puts 10.class 
puts 10.0.class
puts "10".class

#How to find methods

# puts first_name.methods

#Common methods

puts fullname.length
puts fullname.reverse
puts fullname.empty?
puts "".empty?
puts "".equal?

sentence = "Welcome to the jungle"

puts sentence

sentence = sentence.sub("the jungle", "utopia")

puts sentence

#Practice methods

splitted = sentence.split(" ")
print splitted

#Variable assignment

# En ruby si una variable esta apuntando a otra variable, 
# esta apuntando a el lugar en memoria 
# al cual esa variable esta apuntado

new_first_name = first_name
first_name = "Hector Daniel" #Aqui la variable esta apuntando a un nuevo lugar en memoria

puts new_first_name # Por lo que esta variable sigue apuntando al lugar en memoria anterior

#Escaping

puts "the new firstname is \#{first_name}"
puts 'Hector te pregunto: \'hey que ondas men?\''
