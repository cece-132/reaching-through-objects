class Building
  attr_reader :name, :number, :list_apartments
  def initialize(number, name)
    @number = number
    @name = name
    @list_apartments = []
  end

  def add_apartment(apartment_object)
    @list_apartments << apartment_object
  end
end