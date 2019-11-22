# Instructions

Models:

- Driver
- Passenger
- Ride

Driver -< Rides >- Passanger

- Driver has many rides
- Driver has many passengers through rides
- Ride belongs to a Driver and a Passenger
- Passenger has many rides
- Passenger has many drivers through rides

## methods

### Driver

Driver#passengers

- return an array of all the passenger instances connected to this specific driver

Driver#number_of_rides

- returns an integer reflecting the number of rides that this driver has made

Driver.all

- returns an array of all the driver instances

### Ride

Ride.all

- returns an array of all the ride instances

## Passenger

Passenger#rides

- returns an array of all the ride instances connected to this passenger

Passenger#most_expensive_ride

- return an interger reflecting the :cost of the most

Passenger#number_of_rides

- return an integer reflecting the number of rides connected to the passenger

Passenger#drivers

- returns an array of drivers connected to this passenger

## Deliverables

- An instance of Ride must be initialized with a :passenger, :driver, :cost
- An instance of Driver must be initialized with a :name, :car_model
- An instance of Passenger must be initialized with a :name

## Questions

- How do I approach the deliverables?
- What is the relationship between the models?
- How do I format my seed data?
- Which model's should I start coding first?
- How do I test my code?
