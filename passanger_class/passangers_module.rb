require_relative './passanger'

module PassangersModule

    @passangers = []

    def list_all_passengers
    if @passengers.empty?
      puts "No passengers found!"
    else
      puts "List of all passengers:"
      @passengers.each_with_index do |passenger, index|
        puts "#{index + 1}. #{passenger.name} (Passport: #{passenger.passport_number})"
      end
    end
  end

  def add_a_new_passenger
    puts "Add a new passenger"
    print "Passenger name: "
    name = gets.chomp
    print "Passport number: "
    passport_number = gets.chomp

    new_passenger = Passenger.new(name, passport_number)

    # add the new passenger to the list of passengers
    @passengers << new_passenger

    puts "New passenger added: #{new_passenger.name} (Passport: #{new_passenger.passport_number})"
  end
end