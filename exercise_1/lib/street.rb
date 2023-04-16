class Street
  attr_reader :name, :buildings
  def initialize(name)
    @name = name
    @buildings = []
  end
end