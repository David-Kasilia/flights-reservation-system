require_relative './flights'
require_relative './international_flight'

module FlightsModule
   @flights = []
   @international_flights = []

   def list_all_flights
    if @flights.empty?
      puts "There are no flights found in the list!!"
      puts "Kindly add at least one flight to have a list of flights"
    else
      puts "List of all flights:"
      @flights.each_with_index do |flight, index|
        puts "Flight #{index + 1}: #{flight.airline} #{flight.flight_number} to #{flight.destination}"
      end
    end
  end
  
  def list_all_international_flights
    if @international_flights.empty?
      puts "There are no international flights found in the list!!"
      puts "Kindly add at least one international flight to have a list of flights"
    else
      puts "List of all international flights:"
      @international_flights.each_with_index do |flight, index|
        puts "International Flight #{index + 1}: #{flight.airline} #{flight.flight_number} from #{flight.origin} to #{flight.destination_country}"
      end
    end
  end

   def add_a_new_flight
    puts "Add a new flight"
    print "Airline: "
    airline = gets.chomp
    print "Flight number: "
    flight_number = gets.chomp
    print "Destination: "
    destination = gets.chomp
    print "Departure time (e.g. 2023-03-06 10:30): "
    departure_time = gets.chomp
    print "Duration (in hours): "
    duration = gets.chomp.to_i

    new_flight = Flight.new(airline, flight_number, destination, departure_time, duration)

    # add the new flight to the list of flights
    @flights << new_flight

    puts "New flight added: #{new_flight.airline} #{new_flight.flight_number} to #{new_flight.destination}"
  end

  def add_a_new_international_flight
    puts "Add a new international flight"
    print "Airline: "
    airline = gets.chomp
    print "Flight number: "
    flight_number = gets.chomp
    print "Destination: "
    destination = gets.chomp
    print "Departure time (e.g. 2023-03-06 10:30): "
    departure_time = gets.chomp
    print "Duration (in hours): "
    duration = gets.chomp.to_i
    print "Origin: "
    origin = gets.chomp
    print "Destination country: "
    destination_country = gets.chomp

    new_flight = InternationalFlight.new(airline, flight_number, destination, departure_time, duration, origin, destination_country)

    # add the new flight to the list of international flights
    @international_flights << new_flight

    puts "New international flight added: #{new_flight.airline} #{new_flight.flight_number} from #{new_flight.origin} to #{new_flight.destination_country}"
  end

  # ...
end
