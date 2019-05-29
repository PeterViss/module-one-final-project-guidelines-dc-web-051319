require_relative '../config/environment'

Artist.destroy_all
Event.destroy_all
Fan.destroy_all
Ticket.destroy_all

sheeran = Artist.create(name: "Ed Sheeran", genre: "pop", price: "High")
drake = Artist.create(name: "Drake", genre: "rap", price: "High")

fan1 = Fan.create(name: "Jessica")
fan2 = Fan.create(name: "Sean")
fan3 = Fan.create(name: "Vanessa")
fan4 = Fan.create(name: "Rob")
fan5 = Fan.create(name: "Nick")
fan6 = Fan.create(name: "Emily")
fan7 = Fan.create(name: "Junaid")
fan8 = Fan.create(name: "Matt")
fan9 = Fan.create(name: "Meghan")
fan10 = Fan.create(name: "Sanuun")
fan11 = Fan.create(name: "Jian")

event1 = Event.create(name: "Fun Fest", artist_id: sheeran.id, location: "New York", date: "June 3, 2019 6:30", status: "Open", ticket_amount: 300)
event2 = Event.create(name: "Holidays", artist_id: drake.id, location: "New York", date: "Dec 20, 2019 7:00", status: "Open", ticket_amount: 500)


ticket1 = Ticket.create(fan_id: fan1.id, event_id: event1.id)
ticket2 = Ticket.create(fan_id: fan4.id, event_id: event2.id)
ticket3 = Ticket.create(fan_id: fan7.id, event_id: event2.id)

# binding.pry
# 0
