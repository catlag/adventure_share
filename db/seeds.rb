# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@person0 = User.create({username: "linda", password: "lindalinda"})
@person1 = User.create({username: "user1", password: "testing"})
@person2 = User.create({username: "user2", password: "testing"})
@person3 = User.create({username: "user3", password: "testing"})
@person4 = User.create({username: "user4", password: "testing"})
@person5 = User.create({username: "user5", password: "testing"})


trip1 = Trip.create(
      {departure: "Los Angeles",
      destination: "Kansas City",
      startDate: "12/20/2014",
      endDate: "12/23/2014",
      seats: 3})
@person1.trips.push(trip1)

trip2 = Trip.create(
      {departure: "Los Angeles",
      destination: "Kansas City",
      startDate: "12/20/2014",
      endDate: "12/23/2014",
      seats: 3})
@person2.trips.push(trip2)

trip3 = Trip.create(
      {departure: "Los Angeles",
      destination: "Kansas City",
      startDate: "12/20/2014",
      endDate: "12/23/2014",
      seats: 3})
@person3.trips.push(trip3)

trip4 = Trip.create(
      {departure: "Los Angeles",
      destination: "Kansas City",
      startDate: "12/20/2014",
      endDate: "12/23/2014",
      seats: 3})
@person4.trips.push(trip4)


@person3.send_message(@person0, "Hello", "I would like to know at what time you are leaving")
@person4.send_message(@person0, "Yo, how are you?", "Can I know how much I can pack?")
@person1.send_message(@person0, "Ummm... I have a question", "Can you please tell me about what car you have?")
@person2.send_message(@person0, "Can I talk to you?", "If birds could talk what would they say?")






