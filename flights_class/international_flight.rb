require_relative './flights'

class InternationalFlight < Flight
  attr_reader :origin, :destination_country

  def initialize(airline, flight_number, destination, departure_time, duration, origin, destination_country)
    super(airline, flight_number, destination, departure_time, duration)
    @origin = origin
    @destination_country = destination_country
  end
end