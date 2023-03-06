class Passenger
  attr_reader :name, :passport_number

  def initialize(name, passport_number)
    @name = name
    @passport_number = passport_number
  end
end
