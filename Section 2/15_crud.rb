module Crud
    require 'bcrypt'
    puts "module CRUD activated"

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
end

# create_secure_users(users)

# p authenticate_user("heisenberg", "password4", users)

# new_password = create_hash_digest("password1")
# puts new_password
# puts new_password == "password1"
