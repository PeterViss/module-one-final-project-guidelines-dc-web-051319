class Fan < ActiveRecord::Base
  has_many :tickets
  has_many :events, through: :tickets



  def self.search_artist(location)
    events = Event.all.select{|event|event.location == location}
    events.collect{|event|event.artist.name}
    # events.uniq
  end

  def self.find_event(artist,start_date,end_date)
    x = Event.all.select{|event| event.artist.name == artist}
    cool = x.select do |event|
      event.date >= start_date && event.date <= end_date
    end
  
      #   puts event.name
      # else
      #   puts "No Dates Available"
    end



#     def welcome
#       puts "Welcome do you have a user name? (yes or no)"
#       answer = gets.chomp.strip
#       if answer == "yes"
#         puts "Please enter your username."
#         user_name = gets.chomp.strip
#       while Fan.find_by(name: user_name) == nil
#        puts "Username not found, please enter a valid username."
#           user_name = gets.chomp.strip
#       end
#       fan = Fan.find_by(name: user_name)
#       puts fan
#       elsif answer == "no"
#         puts"Please create a username"
#         new_user_name = gets.chomp.strip
#         Fan.create(name: new_user_name)
#         puts "Your username is created!"
#         fan = Fan.find_by(name: new_user_name)
#       end
#     end
#
#     def find_artist_using_location
#     puts "What city would you like to see your event?"
#     city = gets.chomp.strip
#     while Fan.search_artist(city) == []
#       puts "Sorry there is no one playing in this city. Please enter another city:"
#       city = gets.chomp.strip
#     end
#     artist_within_city = Fan.search_artist(city)
#     puts "Here are the artists in your city :"
#       artist_within_city.each do |artist|
#         puts "name = #{artist}"
#       end
#     end
#
#     def choosing_artist
#       puts "#{fan.name}, Which artist would you like to see?"
#       artist = gets.chomp.strip
#       puts "When would you like to see them?"
#       start_date = gets.chomp.strip
#       end_date = gets.chomp.strip
#       event = Fan.find_event(artist,start_date,end_date)
#       open_event = event.select do |event|
#         event.status == 'open'
#       end
#       puts "Here are the events your artist is performing during those dates:"
#         open_event.each do |event|
#           puts "event name = #{open_event.name}"
#           puts "event location = #{open_event.location}"
#           puts "event date = #{open_event.date}"
#           puts "event status = #{open_event.status}"
#           puts "event Available Tickets = #{open_event.ticket_amount}"
#       end
#     end
#
#     def choosing_event
#       loop do
#         puts "Are you interested in any of these events?"
#         response = gets.chomp.strip
#         if response == "yes"
#
#         break
#       end
#         if response == "no"
#           puts "Please enter other dates with your artist"
#           artist = gets.chomp.strip
#           start_date = gets.chomp.strip
#           end_date = gets.chomp.strip
#         event = Fan.find_event(artist,start_date,end_date)
#         puts "Here are the events your artist is performing during those dates : #{event}"
#         end
#       end
#     end
#
#
#   def buying_ticket
#     puts "Which event would you like to go to: please enter event ID number."
#       user_response = gets.chomp.strip
#     puts "Would you like to buy a ticket"
#       response = gets.chomp.strip
#     if response == "yes"
#       puts "How many tickets would you like to buy?"
#       response1 = gets.chomp.strip
#       chosen = event[user_response.to_i - 1]
#         puts Ticket.create(fan_id: "#{fan.id}", event_id: "#{event[user_response.to_i - 1].id}")
#       new_amount = chosen.ticket_amount -= response1.to_i
#     Event.update(chosen.id, ticket_amount: new_amount)
#       if chosen.ticket_amount <= 0
#         Event.update(chosen.id, ticket_amount: 0)
#         Event.update(chosen.id, status: "Closed")
#       end
#     elsif response == "no"
#       puts "Good Bye"
#     end
#   end
#
#   def self.runner
#     welcome
#     find_artist_using_location
#     choosing_artist
#     choosing_event
#     buying_ticket
#   end
#
# end


  # def self.find_range_of_events(artist, start_date, end_date)
  #     self.find_event(artist)
  #     if
  #     events = Event.all.select{|event|event.date >= start_date && event.date <= end_date}
  #     events.collect{|event|event.name}
  #     end
  #   end


  # def buy_ticket(event, amount)
  #   events = Ticket.all.select{|ticket|ticket.event.name == event}
  #   events.collect do |event|
  #     if amount <= event.event.ticket_amount
  #       Ticket.create(fan_id: self.id, event_id: event.id)
  #        event.event.check_status('Open')
  #        event.event.change_ticket_amount(amount)
  #
  #     else
  #       event.event.check_status('Closed')
  #       puts "Sorry all sold out."
  #     end
  #   end
  # end
  #
  # def welcome
  #   puts "Welcome, do you have an account with us?"
  # end

  # def self.user_name
  #   puts "Do you have a username?"
  #       gets.chomp
  #     if "yes"
  #       "Please enter your username."
  #       name = gets.chomp
  #       Fan.find_by(name: "#{name}")
  #     elsif "no"
  #       "Please create a username"
  #       name = gets.chomp
  #         Fan.create(name: "#{name}")
  #     end

  # end
end
