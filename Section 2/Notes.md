# Ruby Language Basics

Everything in Ruby is an object, without exception

## Show variables
``` 
variable = "10"
p variable
puts variable
print variable
```

## String Interpolation

```
first_name = "Hector"
last_name = "Lopez"

full_name = "Hello my name is #{first_name} #{last_name}"
```
## View All Methods Available

``` 
full_name.methods
```

## View Types

```
puts full_name.class
puts 10.class
```

## Evaluate Types

```
name = "Hector"
p name.is_a?(String)
```

## Variable Coversion

- .to_a
- .to_s
- .to_f
- .to_i

Example: 

```
full_name.to_s
```

Other way

- Float
- Integer
- String
- Array

Example: 

```
String(full_name)
```

## Function Syntax

```
def
    body of the function
end
```

*If a return is not explicitly defined ruby its going to define it on the last line of the func*

## String Multiplication and Times

```
puts "10" 
20.times {puts 10}
20.times {puts rand(10)}
```

### rand
- If no args are passed it creates a value between 0 and 1.
- If only 1 arg is passed down the rand method generates a random number between 0 and the it has received - 1.
- If a range is passed it generates a random number between the specified range.

## Arrays

Create an array based on a range

```
a = 1..100
a.to_a
puts a
```

Common Array Methods

```
#See first element of the array
a.first 

#See last element of the array
a.last 

#Self explanatory
a.reverse
a.shuffle
a.length

#Ways to add item to the end of an array
a.push(10)
a<<10
a.append(11)

#Add element at the start of the array
a.unshift(9) 

#Get rid of duplicates
a.uniq!

#See if item is included in array
a.include?(10)

#Remove last item of array and get that value
b = a.pop
puts b

#Convert array into string
a.join(", ")

#Convert string into array
a.split(", ")

#Convert a sentence into an array 
w = %w(my name is Hector and Ruby is amazing)
p w

#iterate an array (preferred in ruby)
w.each {|item| print item + " "}

#Select operator
z = (1..100).to_a.shuffle
p z.select {|number| number.odd?}
```

*The bang operator (!) mutates the caller whenever its used*

## Hashes a.k.a Dictionaries

```
sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}

my_details = {'name'=> 'Hector', 'favcolor' => 'blue'}

p sample_hash['a']
p my_details

#Another way of declaring hash, but the key is a symbol
another_hash = {a:1, b:2, c:3}
p another_hash

#Get the keys of a hash
p sample_hash.keys

#Get the values of a hash
p sample_hash.values

#Iterate a hash
sample_hash.each {|key, value| puts "the key is #{key} and the value is #{value}"}

#Change value of a hash
another_hash[:c] = "Casquitoooo"
p another_hash 

#Select operator
p another_hash.select{|k, v| v.is_a?(String)}

#Delete a value if it's a string
p another_hash.each {|k, v| if v.is_a?(String) then another_hash.delete(k) end}
```

## Basic Class Syntax

```
class User
    attr_accessor :name, :email
    def initialize(name, email)
        @name = name
        @email = email
    end
    def run
        puts "Hey I'm running"
    end
    def self.identify_yourself
        puts "Hey I am a class method"
    end
end

user = User.new("mashrur", "mashrur@example.com")
user.run
User.identify_youself # to run this class method you don't need an instance of user (Equivalent of static)
# you can directly call the class User
```

Account
accounts@escolarea.com
s33kingknol3dg3


