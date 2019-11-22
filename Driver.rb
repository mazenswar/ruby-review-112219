## Driver Class
## An instance of Driver must be initialized with a 
# :name, 
# :car_model
class Driver

    @@all = []
    attr_reader :name, :car_model

    def initialize(name, car_model)
        @name = name
        @car_model = car_model
        @@all << self
    end
     
    def passengers
        # get all the rides
        # find the rides that are linked to this specific driver
        # return those rides' passengers
        #
        rides = Ride.all.select do |ride|
            self == ride.driver
        end
        #  # Way 1
        rides.map do |ride|
            ride.passenger
        end

        # # Way 2
        # rides.map { |ride| ride.passenger }

        #Way 3
        # rides.map(&:passenger)
    end

    def number_of_rides
        rides = Ride.all.select do |ride|
            self == ride.driver
        end
        rides.count
    end

    def self.all
        @@all
    end
end


