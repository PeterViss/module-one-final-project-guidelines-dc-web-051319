require_relative '../config/environment'

puts "Hello"

puts Fan.find_event("Ed Sheeran")
# puts fan1.buy_ticket(event1, 2)
puts Fan.search_artist("New York")
puts Fan.find_range_of_events(00000000,99999999)
# binding.pry
# 0
