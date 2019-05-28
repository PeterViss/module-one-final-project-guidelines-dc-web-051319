require_relative '../config/environment'

Artist.destroy_all
Event.destroy_all
Fan.destroy_all
Ticket.destroy_all

sheeran = Artist.create(name: "Ed Sheeran", genre: "pop", price: "High")
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
fan12 = Fan.create(name: "Sean")
event1 = Event.create(name: "Fun Fest", artist_id: sheeran.id, location: "New York", date: 6032019, status: "Open", ticket_amount: 300)



ticket1 = Ticket.create(fan_id: fan1.id, event_id: event1.id)

# binding.pry
# 0
