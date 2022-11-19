class Passenger

    # attr_accessor :name, :flight_numbers
    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def name
        @name
    end

    def has_flight?(flight_number)
        return true if @flight_numbers.include?(flight_number.upcase)
        false
    end

    def add_flight(flight_number)
        if !self.has_flight?(flight_number.upcase)
            @flight_numbers << flight_number.upcase
        end
    end
end