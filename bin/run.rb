require_relative '../config/environment'


# def user_name
#   user_name = gets.chomp.strip
# end
#
# def fan
#   fan = Fan.find_by(name: user_name)
# end
#
#   while Fan.find_by(name: user_name) == nil
#     puts "Username not found, please enter a valid username."
#     user_name
#   end



  puts "Welcome do you have a user name? (yes or no)"
  answer = gets.chomp.strip
  if answer == "yes"
    puts "Please enter your username."
    user_name = gets.chomp.strip
    while Fan.find_by(name: user_name) == nil
     puts "Username not found, please enter a valid username."
        user_name = gets.chomp.strip
      end
  fan = Fan.find_by(name: user_name)
    puts fan
  elsif answer == "no"
    puts"Please create a username"
    new_user_name = gets.chomp.strip
    Fan.create(name: new_user_name)
    puts "Your username is created!"
    fan = Fan.find_by(name: new_user_name)
  end





  puts "What city would you like to see your event?"
  city = gets.chomp.strip
  while Fan.search_artist(city) == []
    puts "Sorry there is no one playing in this city. Please enter another city:"
    city = gets.chomp.strip
  end
  artist_within_city = Fan.search_artist(city)
  puts "Here are the artists in your city :"
    artist_within_city.each do |artist|
      puts "name = #{artist}"
    end



  puts "#{fan.name}, Which artist would you like to see?"
  artist = gets.chomp.strip
  # while artist != artist_within_city[0]
  #   puts "Artist not in city, please select artist."
  #   gets.chomp.strip
  #   artist_within_city
  # end
  # if artist == artist_within_city
  puts "When would you like to see them?"
  start_date = gets.chomp.strip
  end_date = gets.chomp.strip
  event = Fan.find_event(artist,start_date,end_date)
  puts "Here are the events your artist is performing during those dates:"
    event.each do |event|
  puts "event name = #{event.name}"
  puts "event location = #{event.location}"
  puts "event date = #{event.date}"
  puts "event status = #{event.status}"
  puts "event Available Tickets = #{event.ticket_amount}"

    end

loop do
  puts "Are you interested in any of these events?"
  response = gets.chomp.strip
  if response == "yes"

    break
  end
  if response == "no"
      puts "Please enter other dates with your artist"
      artist = gets.chomp.strip
      start_date = gets.chomp.strip
      end_date = gets.chomp.strip
    event = Fan.find_event(artist,start_date,end_date)
    puts "Here are the events your artist is performing during those dates : #{event}"
  end
    end
    #puts "Here are the events your artist is performing during those dates : #{event}"

    puts "Which event would you like to go to: please enter event ID number."
    user_response = gets.chomp.strip
puts "Would you like to buy a ticket"
response = gets.chomp.strip
if response == "yes"
  puts "How many tickets would you like to buy?"
  response1 = gets.chomp.strip
  chosen = event[user_response.to_i - 1]
  puts Ticket.create(fan_id: "#{fan.id}", event_id: "#{event[user_response.to_i - 1].id}")
  new_amount = chosen.ticket_amount -= response1.to_i
  Event.update(chosen.id, ticket_amount: new_amount)
  if chosen.ticket_amount <= 0
    Event.update(chosen.id, ticket_amount: 0)
    Event.update(chosen.id, status: "Closed")
  end
elsif response == "no"
  puts "Good Bye"
end
