# Purpose of this file is to write test programs
#Welcome to authenticator
# -------------------------
# This program will take input from the user and compare the password
# If password is correct you will get user object/hash
class Authenticate
  attr_accessor :users

  def initialize(users)
    @users = users
  end

  def print_message
    puts "Welcome to authenticator"
    25.times { print "-" }
    puts

    puts "This program will take input from the user and compare the password"
    puts "If password is correct you will  get user object/hash"
  end

  def request_info(user, pass)
    @users.detect {|hash| hash[:username] == user && hash[:password] == pass}
  end


  def start_auth
    print_message
    print "Username:"
    username = gets.chomp

    print "Password:"
    password = gets.chomp

    request_info(username, password) ?  "Valid user" :  "Invalid User, Credentials were not correct"
  end

end

users = [
    {username: 'Dude1', password: 'password1'},
    {username: 'Dude2', password: 'password2'},
    {username: 'Dude3', password: 'password3'},
    {username: 'Dude4', password: 'password4'},
]
# create new instance of authentication program
# pass user array with with hashes of usernames and passwords
new_program = Authenticate.new(users)
# access start method to initialize program
new_program.start_auth
