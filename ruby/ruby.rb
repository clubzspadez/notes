
#! RRRRRR  UU   UU BBBBB   YY   YY 
#! RR   RR UU   UU BB   B  YY   YY 
#! RRRRRR  UU   UU BBBBBB   YYYYY  
#! RR  RR  UU   UU BB   BB   YYY   
#! RR   RR  UUUUU  BBBBBB    YYY
puts 'hello world'

puts 'okay this is working!'
# Defining Methods in RUb

def methodName(string)
  puts 'this should print when this method is invoked'
  puts string
end 

#? It seems we can still pass arugments to methods with paranthesis or without
methodName('this is a string')



## __          __        _    _                        _ _   _     
## \ \        / /       | |  (_)                      (_) | | |    
##  \ \  /\  / /__  _ __| | ___ _ __   __ _  __      ___| |_| |__  
##   \ \/  \/ / _ \| '__| |/ / | '_ \ / _` | \ \ /\ / / | __| '_ \ 
##    \  /\  / (_) | |  |   <| | | | | (_| |  \ V  V /| | |_| | | |
##     \/  \/ \___/|_|  |_|\_\_|_| |_|\__, |   \_/\_/ |_|\__|_| |_|
##                                     __/ |                       
##                                    |___/                        
#$   _____ _        _                 
#$  / ____| |      (_)                
#$ | (___ | |_ _ __ _ _ __   __ _ ___ 
#$  \___ \| __| '__| | '_ \ / _` / __|
#$  ____) | |_| |  | | | | | (_| \__ \
#$ |_____/ \__|_|  |_|_| |_|\__, |___/
#$                           __/ |    
#$                          |___/     


#!String Concatenation
sentence = 'My name is Jonathan'
p sentence

sentence2 = ' and this is my additional sentence'

puts sentence + sentence2
 
#!String Interpolation

#!Methods
# * Common methods in RUBY:
# :nesting, :used_modules, :constants, :new, :allocate, :superclass, :<=>, :<=, :>=, :==, :===, :autoload?, :autoload, :included_modules, :include?, :name, :ancestors, :attr, :attr_reader, :attr_writer, :attr_accessor, :instance_methods, :public_instance_methods, :protected_instance_methods, :private_instance_methods, :const_get, :const_set, :const_defined?, :class_variables, :remove_class_variable, :class_variable_get, :class_variable_set, :class_variable_defined?, :public_constant, :freeze, :inspect, :deprecate_constant, :private_constant, :const_missing, :singleton_class?, :prepend, :class_exec, :module_eval, :class_eval, :include, :<, :>, :remove_method, :undef_method, :alias_method, :protected_method_defined?, :module_exec, :method_defined?, :public_method_defined?, :to_s, :public_class_method, :public_instance_method, :define_method, :private_method_defined?, :private_class_method, :instance_method, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :instance_variable_get, :instance_variables, :method, :public_method, :singleton_method, :define_singleton_method, :public_send, :extend, :to_enum, :enum_for, :pp, :=~, :!~, :eql?, :respond_to?, :object_id, :send, :display, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :yield_self, :taint, :tainted?, :untrust, :untaint, :trust, :untrusted?, :methods, :frozen?, :protected_methods, :singleton_methods, :public_methods, :private_methods, :!, :equal?, :instance_eval, :instance_exec, :!=, :__send__, :__id__]

#!Common methods

#!Variable Assignment
# * Variables are Pass-by-Value:
 a = "Ruby"
b = a
#a => "Ruby"
#b => "Ruby
a.object_id
#Example of a spot in memory that the variable points to => 70211214754080
b.object_id
# the variable b would have the same memory location => 70211214754080

a = "I have changed"
# a => 'I have changed' is result of a pointing to a new place in memory for the current string
#  while b still points to the old address for the string "Ruby"
#
#
#!Escapin
#



#Assignment for checking input Ruby
#
def getFullName
	puts "What is your first name?"
	firstName = gets.chomp
	puts "What is your last name?"
	lastName = gets.chomp
	return printName(firstName, lastName)
end

def printName(first, last)
	puts "Your full name is #{first} #{last}"
	fullname = first + " " + last
	puts "Your name reversed is #{fullname.reverse}"
	puts "Your name has #{first.length + last.length} characters in it"
end

getFullName

#update
#
#Object Oriented Programming 
#
#
class Car
 #attr_accessor: implements both setter and getter for overwriting values or setting
 #attr_writer: implements setter
 #attr_reader: implements getter
 attr_accessor :numberOfWheels
 
 #constructor
 def initialize(numberOfWheels, tankType, seatingCapacity, maxVelocity)
  @numberOfWheels = numberOfWheels
  @tankType = tankType
  @seatingCapacity = seatingCapacity
  @maxVelocity = maxVelociy
 end
 
 #methods can be added to this class
 
 def methodOne 
  #we can access the method from the instance of the car, ie: lambo.methodOne
 end

end

# to initialize a new instance for the class
#
lambo = Vehicle.new(4, 'Gas', 2, 250)
#
lambo.numberOfWheels # => 4
lambo.numberOfWheels = 6 
lambo.numberOfWheels # => 6
#
