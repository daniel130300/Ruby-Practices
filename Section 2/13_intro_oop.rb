class Student

    attr_accessor :first_name, :last_name, :email, :username, :password #For both getter and setter
    attr_reader :username #For only the getter

    def initialize (first_name, last_name, email, username, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password 
    end

    # #Setter Method
    # def first_name=(name)
    #     @first_name = name
    # end

    # #Getter Method
    # def first_name
    #     @first_name
    # end

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
john = Student.new("John", "Doe", "john1@example.com","john1", "password1")
puts hector
puts john

hector.last_name = john.last_name
puts "Hector was altered"
puts hector

