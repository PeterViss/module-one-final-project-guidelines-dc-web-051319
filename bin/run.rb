require_relative '../config/environment'


#
# puts "Welcome do you have a user name?"
# answer = gets.chomp
# if answer == "yes"
#   puts "Please enter your username."
#   user_name = gets.chomp
#   puts Fan.find_by(name: "#{user_name}")
# elsif answer == "no"
#   puts"Please create a username"
#   new_user_name = gets.chomp
#   puts Fan.create(name: "#{new_user_name}")
# end
#
# puts "What city would you like to see your event?"
# city = gets.chomp
# puts "Here are the artists in your city #{Fan.search_artist(city)}"

puts "Which artist would you like to see?"
artist = gets.chomp
 puts "When would you like to see them?"
start_date = gets.chomp
end_date = gets.chomp
puts "Here are the events your artist is performing during those dates : #{Fan.find_event(artist,start_date,end_date)}"


# puts "What dates were you looking for?"
# start_date = gets.chomp
# end_date = gets.chomp
# puts "Here are the events within your dates #{Fan.find_range_of_events(start_date, end_date)}"








# puts "Do you have a username?"































# puts Fan.find_event("Ed Sheeran")
# # puts fan1.buy_ticket(event1, 2)
#
# puts Fan.search_artist("New York")
# puts Fan.find_range_of_events("June 3, 2019","Dec 25, 2019")
# # binding.pry
# # 0
#
# #
# # # puts fan1.buy_ticket(event1, 2)
# #
# # puts Fan.search_artist("New York")
# # puts Fan.find_range_of_events("June 3, 2019","Dec 25, 2019")
# #
# puts Fan.find(73).buy_ticket("Fun Fest", 300)
# puts Event.find(1).status
# binding.pry
# puts Fan.find(73).buy_ticket("Fun Fest", 30)
# puts Event.find(1).status
# puts Fan.find(73).buy_ticket("Fun Fest", 20)
# puts Event.find(1).ticket_amount
 # binding.pry
 # 0
 # fan1.buy_ticket("Fun Fest", 1)
# binding.pry
# 0
