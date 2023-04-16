require './exercise_1/lib/building'
require './exercise_1/lib/apartment'
require './exercise_1/lib/room'

RSpec.describe Building do
  
  describe '#initialize(number, name)' do
    it 'exists and has attributes' do
      bldg = Building.new("623", "Savills Apartment Building")
      expect(bldg).to be_a Building
      expect(bldg.number).to be_a String
      expect(bldg.name).to be_a String
    end
  end

  describe 'add_aparment(apartment_object)' do
    it 'can add an apt to the building' do
      bldg = Building.new("623", "Savills Apartment Building")

      apt_1 = Apartment.new
      apt_2 = Apartment.new
      apt_5 = Apartment.new

      bldg.add_apartment(apt_1)
      bldg.add_apartment(apt_2)
      bldg.add_apartment(apt_5)
      expect(bldg.list_apartments).to be_a Array
      expect(bldg.list_apartments.count).to eq 3
      
      bldg.list_apartments.each do |apt|
        expect(apt).to be_a Apartment
      end
    end
  end

end