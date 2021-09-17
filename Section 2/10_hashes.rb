# Hash a.k.a dictionary

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
sample_hash.each {|key, value| puts "the class for key is #{key.class} and the value is #{value.class}"}

#Change value of a hash
another_hash[:c] = "Casquitoooo"
p another_hash 

#Select operator
p another_hash.select{|k, v| v.is_a?(String)}

p another_hash.each {|k, v| if v.is_a?(String) then another_hash.delete(k) end}

p another_hash.select {|k, v| v.is_a?(Integer)}