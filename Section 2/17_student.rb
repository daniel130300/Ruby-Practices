require_relative './15_crud'

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password #For both getter and setter
    attr_reader :username #For only the getter

    def initialize (first_name, last_name, email, username, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password 
    end

    def to_s
        "
        First name: #{@first_name}, 
        Last name: #{@last_name}, 
        Email address: #{@email}, 
        Username: #{@username}, 
        Password: #{@password}
        "
    end
end

hector = Student.new("Hector", "Lopez", "daniel130300@outlook.com","Wolv130300", "Lopez100")

hashed_password = hector.create_hash_digest(hector.password)
puts hashed_password
