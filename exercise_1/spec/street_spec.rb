require './exercise_1/lib/street'
require './exercise_1/lib/building'

RSpec.describe Street do
  
  describe '#initialize(number, name)' do
    it 'exists and has attributes' do
      adlington = Street.new("Adlington Road")
      expect(adlington).to be_a Street
      expect(adlington.name).to be_a String
    end
  end

  describe '#add_building(bldg)' do
    it 'can add building to the street' do
      adlington = Street.new("Adlington Road")
      bldg = Building.new("623", "Savills Apartment Building")
      adlington.add_building(bldg)

      expect(adlington.buildings).to be_a Array
      expect(adlington.buildings.count).to eq 1
    end
  end

end