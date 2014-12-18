# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@person0 = User.create({username: "linda", password: "lindalinda", email: "sammieeagle@gmail.com"})
@person1 = User.create({username: "user1", password: "testing", email:"blahblah24@blah.com"})
@person2 = User.create({username: "user2", password: "testing", email:"blahblah24@blah.com"})
@person3 = User.create({username: "user3", password: "testing", email:"blahblah24@blah.com"})
@person4 = User.create({username: "user4", password: "testing", email:"blahblah24@blah.com"})
@person5 = User.create({username: "user5", password: "testing", email:"blahblah24@blah.com"})


trip1 = Trip.create(
      {departure: "Los Angeles",
      destination: "Kansas City",
      startDate: "12/20/2014",
      endDate: "12/23/2014",
      seats: 2})
@person1.trips.push(trip1)

trip2 = Trip.create(
      {departure: "Seattle",
      destination: "Austin",
      startDate: "12/31/2014",
      endDate: "1/04/2014",
      seats: 1})
@person2.trips.push(trip2)

trip3 = Trip.create(
      {departure: "Chicago",
      destination: "Las Vegas",
      startDate: "12/20/2014",
      endDate: "12/23/2014",
      seats: 3})
@person3.trips.push(trip3)

trip4 = Trip.create(
      {departure: "Here",
      destination: "There",
      startDate: "12/20/2014",
      endDate: "12/23/2014",
      seats: 4})
@person4.trips.push(trip4)

@body = "this is the body of the message"

@person3.send_message(@person0, "I would like to know at what time you are leaving", "Hello" )
@person4.send_message(@person0, "Can I know how much I can pack?", "Yo, how are you?")
@person1.send_message(@person0, "Can you please tell me about what car you have?", "Ummm... I have a question" )
@person2.send_message(@person0, "If birds could talk what would they say?", "Can I talk to you?" )
@person4.send_message(@person0, @body, "Let's see...")





