# EXTREMELY IMPORTANT NOTE

Install the newest version of ruby and use the latest verion of rails in order to deploy in heroku-20

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

## Create a Module and Methods

```
module Crud
    require 'bcrypt'
    puts "module CRUD activated"

    def Crud.create_hash_digest(password)
        BCrypt::Password.create(password)
    end

    def Crud.verify_hash_digest(password)
        BCrypt::Password.new(password)
    end

    def Crud.create_secure_users(list_of_users)
        list_of_users.each do |user_record|
            user_record[:password] = create_hash_digest(user_record[:password])
        end

        return list_of_users
    end

    def Crud.authenticate_user(username, password, list_of_users)
        list_of_users.each do |user_record|
            if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
                return user_record
            end
        end
        "Credentials were not correct"
    end
end
```

## Require Relative and Include

### Require
The require method does what include does in most other programming languages: run another file. It also tracks what you've required in the past and won't require the same file twice. 

### Include

The include method takes all the methods from another module and includes them into the current module. 

*The include method is the primary way to "extend" classes with other modules (usually referred to as mix-ins).*

# Useful Commands

# RVM

```
#Command to change current ruby version
rvm use 2.7.2

# Command to change the default ruby version running
rvm --default use 2.6.3

# Command to list all ruby available versions to install
rvm list known

# Command to list all ruby versions installed
rvm list 
```

# Rails

```
# Command to create a new rails app using postgres as default db
rails new my_app_name --d=postgresql

# Command to create a new rails app
rails new blog

# Command to create a new rails app with a specified version
rails _5.2.6_ new test_app_5

# Command to see all rails versions installed
gem list rails

# Commands to generate controllers, models, views, migration files fast
rails generate controller pages
rails generate view articles
rails generate model article
rails generate migration create_articles

# Command to create CRUDS fast
rails generate scaffold Article title:text description:text

# Command to migrate db 
rails db:migrate

# Command to show all routes 
rails routes --expanded
```

# Postgres

```
# Start postgresql server
alias pg_start="launchctl load ~/Library/LaunchAgents"
pg_start

# Stop postgresql server
alias pg_stop="launchctl unload ~/Library/LaunchAgents"
pg_stop

# Access postgresql shell
psql
```

# Rails Console Commands
We can work the table information that we want from the db as a class

```
# Access rails console
rails c

# Update console when model has been changed
reload!

# Show all table records
Table.all

# Read a table record by its id
Article.find(2)

# Insert record into table
    # 1st way
    Table.create(title:"Article 1", description: "Hello world")

    # 2nd way (Preferred)
    article = Article.new
    article.title = "Article 2"
    article.description = "article 2 desc"
    article.save

# Update table record
article = Article.find(2)
article.title = "Article 2 updated"
article.description = "Article 2 description updated"
article.save

# Delete table record
article = Article.find(2)
article.destroy

# Display errors when doing any CRUD operations
article.errors.full_messages
```


