require 'bcrypt'

users = [
    {username:'hector', password:'password1'},
    {username:'jack', password:'password2'},
    {username:'arya', password:'password3'},
    {username:'heisenberg', password:'password4'}
]

def create_hash_digest(password)
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
    BCrypt::Password.new(password)
end

def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end

    return list_of_users
end

def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
            return user_record
        end
    end
    "Credentials were not correct"
end

create_secure_users(users)

p authenticate_user("heisenberg", "passwor1", users)

# new_password = create_hash_digest("password1")
# puts new_password
# puts new_password == "password1"