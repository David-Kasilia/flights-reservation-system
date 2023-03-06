class Flight
  attr_reader :airline, :flight_number, :destination, :departure_time, :duration

  def initialize(airline, flight_number, destination, departure_time, duration)
    @airline = airline
    @flight_number = flight_number
    @destination = destination
    @departure_time = departure_time
    @duration = duration
  end
end