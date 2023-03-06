# require_relative './main_menu_options'
require_relative '../flights_class/flights_module'
require_relative '../passanger_class/passangers_module'
require_relative '../reservation_class/reservations_module'

module Main
  include FlightsModule
  include PassangersModule
  include ReservationsModule

  def self.main_menu
    loop do
      # display the main menu options
      puts "Welcome to the Flight Reservation System\n\n"
      puts "Please select an option:\n\n"
      puts "1. List all flights"
      puts "2. List all international flights"
      puts "3. List all passengers"
      puts "4. Add a new flight"
      puts "5. Add a new international flight"
      puts "6. Add a new passenger"
      puts "7. Make a reservation"
      puts "8. List all reservations"
      puts "9. Exit"

      # get user input
      menu_option = gets.chomp.to_i

      # perform the selected action
      case menu_option
      when 1
        list_all_flights
      when 2
        list_all_international_flights
      when 3
        list_all_passengers
      when 4
        add_a_new_flight
      when 5
        add_a_new_international_flight
      when 6
        add_a_new_passenger
      when 7
        make_a_reservation
      when 8
        list_all_reservations
      when 9
        exit
      else
        puts 'Invalid selection'
        puts 'Please enter a valid number between 1 - 9 or 10 to exit the application'
      end
    end
  end
end

# run the main menu loop
Main.main_menu

