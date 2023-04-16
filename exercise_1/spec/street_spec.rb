require './exercise_1/lib/building'
require './exercise_1/lib/apartment'
require './exercise_1/lib/room'

RSpec.describe Street do
  
  describe '#initialize(number, name)' do
    it 'exists and has attributes' do
      bldg = Building.new("623", "Savills Apartment Building")
      expect(bldg).to be_a Building
      expect(bldg.number).to be_a String
      expect(bldg.name).to be_a String
    end
  end

end