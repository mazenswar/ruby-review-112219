## Passenger Class
# - An instance of Passenger must be initialized with a :name
class Passenger
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        # returns an array of all the ride instances connected to this passenger
        Ride.all.select do |ride|
            self == ride.passenger
        end
    end

    def most_expensive_ride
        # - return an interger reflecting the :cost of the most

        # step 1: find the most expensive ride
       ride = self.rides.max_by do |ride|
            ride.cost
        end
    
        # step 2: return the actual cost of the ride we found
        ride.cost
    end

    def number_of_rides
        self.rides.count
    end

    def drivers
        # returns an array of drivers connected to this passenger
        self.rides.map do |ride|
            ride.driver
        end
    end

    def self.all
        @@all
    end



end
