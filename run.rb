require('pry')
require_relative('Driver')
require_relative('Passenger')
require_relative('Ride')


## Let's put our seed data here

d1 = Driver.new("Rick", "Honda")
d2 = Driver.new("Morty", "Toyota")
d3 = Driver.new("Beth", "Ferrari")
d4 = Driver.new("Jerry", "Aston Martin")

p1 = Passenger.new("Eric") 
p2 = Passenger.new("Joseph")
p3 = Passenger.new("Ashley")
# (passenger, driver, cost)
r1 = Ride.new( p1, d1, 10) 
r2 = Ride.new( p1, d1, 5) 
r3 = Ride.new( p1, d2, 7)
r4 = Ride.new( p2, d3, 99)
r5 = Ride.new( p2, d3, 100) 


## Test through pry 
# binding.pry
debugger

puts "end"