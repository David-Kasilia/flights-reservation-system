class Reservation
  attr_reader :passenger, :flight, :seat

  def initialize(passenger, flight, seat)
    @passenger = passenger
    @flight = flight
    @seat = seat
  end

  def to_s
    "Reservation details:\n" +
    "  Passenger: #{passenger.name} (Passport: #{passenger.passport_number})\n" +
    "  Flight: #{flight.number} (#{flight.origin} to #{flight.destination})\n" +
    "  Seat: #{seat}"
  end
end
