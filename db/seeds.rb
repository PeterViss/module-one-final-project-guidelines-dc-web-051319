require_relative '../config/environment'

Artist.destroy_all
Event.destroy_all
Fan.destroy_all
Ticket.destroy_all

sheeran = Artist.create(name: "Ed Sheeran", genre: "Pop", price: "High")
drake = Artist.create(name: "Drake", genre: "Rap", price: "High")
artist3 = Artist.create(name: "This Wild Life", genre: "Acoustic" , price: "Low")
artist4 = Artist.create(name: "Eminem" , genre: "Rap", price: "High")
artist5 = Artist.create(name: "AC/DC", genre: "Rock", price: "High")
artist6 = Artist.create(name: "Beartooth", genre: "Metal" , price: "Medium")
artist7 = Artist.create(name: "The Dangerous Summer", genre: "Contemporary", price: "Medium")
artist8 = Artist.create(name: "Holding Onto Hope", genre: "Metal", price: "Low")
artist9 = Artist.create(name: "Kings Kaleidoscope", genre: "Worship", price: "Medium")
artist10 = Artist.create(name: "Logic", genre: "Rap", price: "High")
artist11 = Artist.create(name: "Pianos Become The Teeth", genre: "Contemporary", price: "Medium")
artist12 = Artist.create(name: "Blink-182", genre: "Punk Rock", price: "High")
artist13 = Artist.create(name: "A Day To Remember", genre: "Metal", price: "Medium")
artist14 = Artist.create(name: "La Dispute", genre: "Metal", price: "Low" )
artist15 = Artist.create(name: "Boogie", genre: "Rap", price: "Medium")
artist16 = Artist.create(name: "Fort Hope", genre: "Rock", price: "Low" )
artist17 = Artist.create(name: "Taylor Swift", genre: "Pop", price: "High")
artist18 = Artist.create(name: "Sleeping Giant", genre: "Metal", price: "Low")
artist19 = Artist.create(name: "Dean Lewis", genre: "Pop", price: "Medium")
artist20 = Artist.create(name: "Lil Nas X", genre: "Pop", price: "High")
artist21 = Artist.create(name: "The Ghost Inside", genre: "Metal", price: "Medium")
artist22 = Artist.create(name: "Wind And Sails", genre: "Acoustic", price: "Low")
artist23 = Artist.create(name: "WVNDER", genre: "Punk", price: "Low")
artist24 = Artist.create(name: "Young The Giant", genre: "Pop", price: "Medium")
artist25 = Artist.create(name: "Post Malone", genre: "Pop", price: "High")
artist26 = Artist.create(name: "The Cinematic Orchestra", genre: "Classical", price: "High")


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
fan12 = Fan.create(name: "Tobi")
fan13 = Fan.create(name: "Pam")
fan14 = Fan.create(name: "Jim")
fan15 = Fan.create(name: "Michael")
fan16 = Fan.create(name: "Stacy")
fan17 = Fan.create(name: "Tracy")
fan18 = Fan.create(name: "Molly")
fan19 = Fan.create(name: "Jordan")
fan20 = Fan.create(name: "Calvin")
fan21 = Fan.create(name: "Simon")
fan22 = Fan.create(name: "Peter")
fan23 = Fan.create(name: "Kemunto")
fan24 = Fan.create(name: "Jake")
fan25 = Fan.create(name: "Caleb")
fan26 = Fan.create(name: "Christian")

event1 = Event.create(name: "Fun Fest", artist_id: sheeran.id, location: "New York", date: "June 3, 2019 6:30", status: "Open", ticket_amount: 3000)
event2 = Event.create(name: "Holidays", artist_id: drake.id, location: "New York", date: "Dec 20, 2019 7:00", status: "Open", ticket_amount: 5000)
event3 = Event.create(name: "Party Time", artist_id: artist3.id, location: "New York", date: "Jan 18, 2020 5:30", status: "Open", ticket_amount: 50)
event4 = Event.create(name: "Walla Malla", artist_id: artist5.id, location: "Washington DC", date: "August 13, 2019 9:00", status: "Open", ticket_amount: 600)
event5 = Event.create(name: "Free World", artist_id: artist4.id, location: "Detroit", date: "July 4, 2019 8:00", status: "Open", ticket_amount: 2000)
event6 = Event.create(name: "Rage Time", artist_id: artist6.id, location: "Los Angeles", date: "June 20, 2019 7:00", status: "Open", ticket_amount: 200)
event7 = Event.create(name: "Chilly Billy", artist_id: artist7.id, location: "Utah", date: "December 12, 2019 8:00", status: "Open", ticket_amount: 300)
event8 = Event.create(name: "Heat The Meat", artist_id: artist8.id, location: "Chicago", date: "July 15, 2019 6:00", status: "Open", ticket_amount: 250)
event9 = Event.create(name: "40 Days Celebration", artist_id: artist9.id, location: "Pheonix", date: "September 20, 2019 8:00", status: "Open", ticket_amount: 400)
event10 = Event.create(name: "Smokey The Bear", artist_id: artist10.id, location: "Portland", date: "October 17, 2019 4:20", status: "Open", ticket_amount: 1000 )
event11 = Event.create(name: "Hot Cocoa Event", artist_id: artist11.id, location: "San Francisco", date: "November 21, 2019 7:00", status: "Open", ticket_amount: 300 )
event12 = Event.create(name: "Summer Fest", artist_id: artist12.id, location: "Los Angeles", date: "July 13, 2019 7:00", status: "Open", ticket_amount: 1000)
event13 = Event.create(name: "Poke The Needle", artist_id: artist13.id, location: "Seattle", date: "October 30, 2019 7:30", status: "Open", ticket_amount: 700)
event14 = Event.create(name: "Corn Rolls", artist_id: artist14.id, location:"Chadron", date: "August 18, 2019 5:00", status: "Open", ticket_amount: 100 )
event15 = Event.create(name: "Catch Me Outside", artist_id: artist15.id, location: "Washington DC", date: "May 30, 2019 6:00", status: "Open", ticket_amount: 700)
event16 = Event.create(name: "It's Too Hot", artist_id: artist16.id, location: "Miami", date: "July 1, 2019 5:30", status: "Open", ticket_amount: 400)
event17 = Event.create(name: "Hair Flip Event", artist_id: artist17.id, location: "New York", date: "August 27, 2019 9:00", status: "Open", ticket_amount: 1000)
event18 = Event.create(name: "Mosh Pit Fest", artist_id: artist18.id, location: "San Diego", date: "June 19, 2019 7:00", status: "Open", ticket_amount: 300)
event19 = Event.create(name: "Forty Minutes", artist_id: artist19.id, location: "Sacramento", date: "October 19, 2019 7:30", status: "Open", ticket_amount: 500)
event20 = Event.create(name: "I Like To Ride", artist_id: artist20.id, location: "Houston", date: "September 17, 2019 6:00", status: "Open", ticket_amount: 220)
event21 = Event.create(name: "Wall Of Death", artist_id: artist21.id, location: "Washington DC", date: "June 25, 2019 9:00", status: "Open", ticket_amount: 500 )
event22 = Event.create(name: "All Smiles With the Niles", artist_id: artist22.id, location: "New York", date: "July 19, 2019 5:00", status: "Open", ticket_amount: 190)
event23 = Event.create(name: "Mohawks and Hairdye", artist_id: artist23.id, location: "Washington DC", date: "May 30, 2019 6:00", status: "Open", ticket_amount: 150)
event24 = Event.create(name: "Lets Just Have A Good Time", artist_id: artist24.id, location: "Charlottesville", date: "September 21, 2019 7:00", status: "Open", ticket_amount: 700)
event25 = Event.create(name: "Stoney Maloney", artist_id: artist25.id, location: "New York", date: "November 30, 2019 7:30", status: "Open", ticket_amount: 1500)
event26 = Event.create(name: "The Orchestral Concerto", artist_id: artist26.id, location: "Washington DC", date: "September 22, 2019 8:00", status: "Open", ticket_amount: 500)
event27 = Event.create(name: "White Iverson", artist_id: artist25.id, location: "Washington DC", date: "August 20, 2019 7:00", status: "Open", ticket_amount: 1000)
ticket1 = Ticket.create(fan_id: fan1.id, event_id: event1.id)
ticket2 = Ticket.create(fan_id: fan4.id, event_id: event2.id)
ticket3 = Ticket.create(fan_id: fan7.id, event_id: event2.id)

# binding.pry
# 0
