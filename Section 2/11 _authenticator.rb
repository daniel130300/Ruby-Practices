users = [
    {username:'hector', password:'password1'},
    {username:'jack', password:'password2'},
    {username:'arya', password:'password3'},
    {username:'heisenberg', password:'password4'}
]

user_tries = 0
max_tries = 3
authenticated = false

def auth_user(user_name, password, list_of_users)
    authorized = false
    list_of_users.each do|user| 
        if user[:username] == user_name && user[:password] == password
            puts user
            authorized = true
            break
        end
    end
    return authorized
end

title = "Welcome to the authenticator"
puts title
print "-" * title.length
puts
puts "This program will take input from the user and compare password"

while(!authenticated && user_tries < max_tries)
    puts "Username: "
    user_name = gets.chomp
    puts "Password: "
    password = gets.chomp

    authenticated = auth_user(user_name, password, users)

    if (authenticated)
        break
    elsif (user_tries == max_tries - 1)
        puts "Maximum number of tries reached"
    else
        puts "Press n to quit or any other key to continue"
        continue = gets.chomp.downcase
        break if continue == "n"
    end

    user_tries += 1
end