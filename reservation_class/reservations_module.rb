require_relative './reservation'

module ReservationsModule
    @reservations = []

  def list_all_reservations
    if @reservations.empty?
      puts "No reservations found!"
    else
      puts "List of all reservations:"
      @reservations.each_with_index do |reservation, index|
        puts "#{index + 1}. #{reservation.passenger.name} (Passport: #{reservation.passenger.passport_number}), #{reservation.flight.number}, Seat: #{reservation.seat}"
      end
    end
  end

  def add_a_new_reservation
    puts "Add a new reservation"
    print "Passenger passport number: "
    passport_number = gets.chomp

    # find the passenger with the given passport number
    passenger = @passengers.find { |p| p.passport_number == passport_number }

    if passenger.nil?
      puts "Passenger not found!"
      return
    end

    # list available flights
    list_all_flights

    # ask user to select a flight
    print "Enter flight number: "
    flight_number = gets.chomp

    # find the flight with the given flight number
    flight = @flights.find { |f| f.number == flight_number }

    if flight.nil?
      puts "Flight not found!"
      return
    end

    # list available seats
    puts "Available seats:"
    seats = flight.available_seats
    seats.each do |seat|
      puts seat
    end

    # ask user to select a seat
    print "Enter seat number: "
    seat = gets.chomp

    # create the new reservation
    reservation = Reservation.new(passenger, flight, seat)

    # add the new reservation to the list of reservations
    @reservations << reservation

    puts "New reservation added:\n#{reservation}"
  end
end
