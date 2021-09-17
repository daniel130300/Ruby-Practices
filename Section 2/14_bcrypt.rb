require 'bcrypt'

my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")
my_password_3 = BCrypt::Password.create("my password")
puts my_password_1 
puts my_password_2 
puts my_password_3 

# puts my_password.version
# puts my_password.cost
# puts my_password == "my password"
# puts my_password == "not my password"

# my_password = BCrypt::Password.new("$2a$12$oNMNxEOEW9GvdrlHIHXUE.y39TcC4eT.17UMQqg3BOh540G82omMe")

# p my_password
# p my_password == "my password"