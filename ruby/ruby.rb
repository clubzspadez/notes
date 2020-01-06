
#! RRRRRR  UU   UU BBBBB   YY   YY
#! RR   RR UU   UU BB   B  YY   YY
#! RRRRRR  UU   UU BBBBBB   YYYYY
#! RR  RR  UU   UU BB   BB   YYY
#! RR   RR  UUUUU  BBBBBB    YYY
#  Ruby documentation and classes/methods -> https://ruby-doc.com/
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
"#{sentence}"
#!Methods
# * Common methods in RUBY:
# :nesting, :used_modules, :constants, :new, :allocate, :superclass, :<=>, :<=, :>=, :==, :===, :autoload?, :autoload, :included_modules, :include?, :name, :ancestors, :attr, :attr_reader, :attr_writer, :attr_accessor, :instance_methods, :public_instance_methods, :protected_instance_methods, :private_instance_methods, :const_get, :const_set, :const_defined?, :class_variables, :remove_class_variable, :class_variable_get, :class_variable_set, :class_variable_defined?, :public_constant, :freeze, :inspect, :deprecate_constant, :private_constant, :const_missing, :singleton_class?, :prepend, :class_exec, :module_eval, :class_eval, :include, :<, :>, :remove_method, :undef_method, :alias_method, :protected_method_defined?, :module_exec, :method_defined?, :public_method_defined?, :to_s, :public_class_method, :public_instance_method, :define_method, :private_method_defined?, :private_class_method, :instance_method, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :instance_variable_get, :instance_variables, :method, :public_method, :singleton_method, :define_singleton_method, :public_send, :extend, :to_enum, :enum_for, :pp, :=~, :!~, :eql?, :respond_to?, :object_id, :send, :display, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :yield_self, :taint, :tainted?, :untrust, :untaint, :trust, :untrusted?, :methods, :frozen?, :protected_methods, :singleton_methods, :public_methods, :private_methods, :!, :equal?, :instance_eval, :instance_exec, :!=, :__send__, :__id__]

#!Common methods
#
#
#
# Symbols -> :symbol
# - Symbols are light weight strings that can be used to reference strings
#

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
#



# Methods
# In ruby the last evaluated statement in the method is implicitly returned
# Execution flow: Methods cannot be invoked if they have not been defined first.
# Example:
#
# test_method(input_1, input_2)
#
#
# def test_method(in1, in2)
#   in1 + in2
# end
#
# ^ this will toss an error where test_method is being invoked as the execution flow does not create and then execute.
# - You will need to define your methods before hand.
#
#
def getFullName
	puts "What is your first name?"
	firstName = gets.chomp
	puts "What is your last name?"
	lastName = gets.chomp
  # this will return the method below as it is the last evaluated statement
  printName(firstName, lastName)
end

def printName(first, last)
	puts "Your full name is #{first} #{last}"
	fullname = first + " " + last
	puts "Your name reversed is #{fullname.reverse}"
	puts "Your name has #{first.length + last.length} characters in it"
end

#
# BRANCHING -> If/elsif/else/end
#
# if condition
# -> do something
# else
# -> do something
# end
#
# if condition
#  -> do something
# elsif
#  -> do something
# else
#  -> do something
# end
#
#
#                                          _______ _                 _
#      /\                                 / /_   _| |               | |
#     /  \   _ __ _ __ __ _ _   _ ___    / /  | | | |_ ___ _ __ __ _| |_ ___  _ __ ___
#    / /\ \ | '__| '__/ _` | | | / __|  / /   | | | __/ _ \ '__/ _` | __/ _ \| '__/ __|
#   / ____ \| |  | | | (_| | |_| \__ \ / /   _| |_| ||  __/ | | (_| | || (_) | |  \__ \
#  /_/    \_\_|  |_|  \__,_|\__, |___/ _/   |_____|\__\___|_|  \__,_|\__\___/|_|  |___/
#                           __/ |
#                          |___/
# array methods can be found -> https://ruby-doc.org/core-2.4.1/Array.html
# range( represents an interval 1..100) methods can be found ->
# Arrays can be defined or created using the literal constructor []
# Arrays can also be defined by the following:
# ary = Array.new    #=> []
#
#
# Common iterators when working with ruby
# -> Each Iterator. This iterator returns all the elements of an array or a hash. Each iterator returns each value one by one.
#   collection.each do |variable_name|
#    # code to be iterate
#   end
#
# -> Collect Iterator. This iterator returns all the elements of a collection.
#  The collect iterator returns an entire collection, regardless of whether it is an array or hash
#   Collection = collection.collect{ |variables in scope| (code to iterate)}
#
# -> Times Iterator.  In this iterator, a loop is implanted with the specific number of time.
#  The loop is initially started from zero and runs until the one less than the specified number.
#  This can be used with no iteration variable.. We can add an iteration variable by using the vertical bars around the identifier.
#
# -> Upto Iterator. This iterator follows top to bottom approach. It includes both the top and bottom variable in the iteration.
#
# -> Downto Iterator. This iterator follows bottom to top approach. It includes both the top and bottom variable in the iteration.
# -> Step Iterator. Ruby step iterator is used to iterate where the user has to skip a specified range
# -> Each_Line Iterator. Ruby each_line iterator is used to iterate over a new line in the string
#
#
#
#  HASH or HASHES  -> { 'a' => 1, 'b' => 2}
#  HASH Class documentation -> https://ruby-doc.com/core-2.5.2/Hash.html
# You can access values by referencing the key you want to access
#
# example:
# with strings
# sample_hash = { 'a' => 1, 'b' => 2}
# sample_hash['b'] =>  2
#
# with symbols
# sample_hash = { a: 1, b: 2}
# sample_hash[:b] =>  2
#
#
# Each named key can be strings or symbols
# And a hash can be created with
#  -> Hash.new
#




#
# Object Oriented Programming
#
#
class Car
 #iimplements both setter and getter for overwriting values or setting
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
