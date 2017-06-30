#!/usr/bin/env ruby

require './methods'

puts "\n*** WELCOME TO OUR USER API CALL LESSON CLASS *** "
puts "=============================="
puts "++ Our Program Will do the followings: "
puts "Prompt user to enter uri"
puts "Spit error id not valid and promt the user for uri again and again"
puts "User can quit the program when user enters any of the follwoing words: 'quit', 'exit', 'q', 'x'"
puts "Then display the response."
puts "=============================="

prompt_uri= query_user_for_uri

data= open(prompt_uri).readlines
puts data

# http://jsonplaceholder.typicode.com/users/
