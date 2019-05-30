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
    x.collect do |event|
      if event.date >= start_date && event.date <= end_date
         event
      else
        "No dates Available"
      end
      #   puts event.name
      # else
      #   puts "No Dates Available"
    end

  end


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
