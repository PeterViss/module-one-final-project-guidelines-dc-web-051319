require_relative '../config/environment'

sheeran = Artist.new("Ed Sheeran")
event1 = Event.new("Fun Fest", sheeran, "New York", "June 3, 2019")
fan1 = Fans.new("Jessica")
ticket1 = Ticket.new(fan1, event1)
