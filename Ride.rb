## Ride Class
# An instance of Ride must be initialized with a :passenger, :driver, :cost
class Ride
    attr_reader :passenger, :driver, :cost
    @@all = []
    def initialize(passenger, driver, cost)
        @passenger = passenger
        @driver = driver
        @cost = cost
        @@all << self
    end

    def self.all
        @@all
    end
end
