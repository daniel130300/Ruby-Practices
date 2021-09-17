require_relative './15_crud'

users = [
    {username:'hector', password:'password1'},
    {username:'jack', password:'password2'},
    {username:'arya', password:'password3'},
    {username:'heisenberg', password:'password4'}
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users
