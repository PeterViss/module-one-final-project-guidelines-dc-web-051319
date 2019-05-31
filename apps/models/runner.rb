require_relative './fan.rb'
class StartProject


    @@fan = nil
    @@event = nil



def self.welcome
  puts "Welcome do you have a user name? (yes or no)"
  answer = gets.chomp.strip.titleize
  until answer == "Yes" || answer == "No"
    puts "Invalid response, please enter yes or no."
      answer = gets.chomp.strip.titleize
    end
  if answer == "Yes"
    puts "Please enter your username."
    user_name = gets.chomp.strip.titleize
    while Fan.find_by(name: user_name) == nil
      puts "Username not found, please enter a valid username."
      user_name = gets.chomp.strip.titleize
    end
    # binding.pry
    @@fan = (Fan.find_by(name: user_name))
    puts "Hello #{@@fan.name}"
  elsif answer == "No"
    puts"Please create a username"
    new_user_name = gets.chomp.strip.titleize
    Fan.create(name: new_user_name)
    puts "Your username is created!"
    @@fan = Fan.find_by(name: new_user_name)
  end
end

def self.find_artist_using_location
  puts "What city would you like to see your event?"
  city = gets.chomp.strip.titleize
  while Fan.search_artist(city) == []
    puts "Sorry there is no one playing in this city. Please enter another city:"
    city = gets.chomp.strip.titleize
  end
  artist_within_city = Fan.search_artist(city)
    puts "Here are the artists in your city :"
    artist_within_city.each do |artist|
    puts "name = #{artist}"
  end
end

def self.choosing_artist
    puts "#{@@fan.name}, Which artist would you like to see?"
    artist = gets.chomp.strip.titleize
    puts "When would you like to see them?"
    start_date = gets.chomp.strip.titleize
    end_date = gets.chomp.strip.titleize
    @@event = Fan.find_event(artist,start_date,end_date)
    open_event = @@event.select do |event|
      event.status == 'Open'
    end
    if @@event.length > 0
      puts "Here are the events your artist is performing during those dates:"
      i = 1
      open_event.each do |event|
        puts " "
        puts "event number = #{i.to_s}"
        puts "event name = #{event.name}"
        puts "event location = #{event.location}"
        puts "event date = #{event.date}"
        puts "event status = #{event.status}"
        puts "event Available Tickets = #{event.ticket_amount}"
        puts " "
        i += 1
      end
    else
      puts "This artist is not performing within these dates."
      end
end

def self.choosing_event
  loop do
    puts "Are you interested in any of these events?"
    response = gets.chomp.strip.titleize
    if response == "Yes"

       break
     end
    if response == "No"
      puts "Please enter other dates with your artist"
      artist = gets.chomp.strip.titleize
      start_date = gets.chomp.strip.titleize
      end_date = gets.chomp.strip.titleize
      @@event = Fan.find_event(artist,start_date,end_date)
      open_event = @@event.select do |event|
        event.status == 'Open'
      end
      puts "Here are the events your artist is performing during those dates :"
      if @@event.length > 0
        puts "Here are the events your artist is performing during those dates:"
        i = 1
        open_event.each do |event|
          puts " "
          puts "event number = #{i.to_s}"
          puts "event name = #{event.name}"
          puts "event location = #{event.location}"
          puts "event date = #{event.date}"
          puts "event status = #{event.status}"
          puts "event Available Tickets = #{event.ticket_amount}"
          puts " "
          i += 1
        end
      end
    end
  end
end


def self.buying_ticket
  puts "Which event would you like to go to: please enter event number."
  user_response = gets.chomp.strip.titleize
  puts "Would you like to buy a ticket"
  response = gets.chomp.strip.titleize
    if response == "Yes"
      puts "How many tickets would you like to buy?"
      response1 = gets.chomp.strip.titleize
      chosen = @@event[0]
      Ticket.create(fan_id: "#{@@fan.id}", event_id: "#{@@event[user_response.to_i - 1].id}")
      puts "Enjoy your show!"
      new_amount = chosen.ticket_amount -= response1.to_i
      Event.update(chosen.id, ticket_amount: new_amount)
    if chosen.ticket_amount <= 0
      Event.update(chosen.id, ticket_amount: 0)
      Event.update(chosen.id, status: "Closed")
  end
  elsif response == "No"
    puts "Good Bye"
  end
end

  def self.run
    self.welcome
    self.find_artist_using_location
    self.choosing_artist
    self.choosing_event
    self.buying_ticket
  end
end
