class Fan < ActiveRecord::Base
  has_many :tickets
  has_many :events, through: :tickets


  def self.find_event(artist)
    events = Ticket.all.collect do |ticket|
      ticket.event.artist.name == artist
      ticket.event
    end
      events
  end

  def self.search_artist(location)
    events = Ticket.all.collect do |ticket|
      ticket.event.location == location
      ticket.event.artist.name
  end
    events
  end

  def self.find_range_of_events(start_date, end_date)
      events = Ticket.all.collect do |ticket|
        ticket.event.date >= start_date && ticket.event.date <= end_date
        ticket.event
      end
      events.uniq
    end


  def buy_ticket(event, amount)
    events = Ticket.all.collect do |ticket|
      ticket.event == event
    end
        events.each do |ticket|
      if ticket.status == 'open'
        ticket.event.ticket_amount -= amount
      elsif ticket.status == 'closed'
        "Sorry all sold out."
      end
    end
  end
end
