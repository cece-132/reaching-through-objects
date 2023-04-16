require './exercise_1/lib/apartment'

RSpec.describe Apartment do
  
  describe '#initialize(name)' do
    it 'exists and has attributes' do
      apartment = Apartment.new      
      expect(apartment).to be_a Apartment
      expect(apartment.rented).to be_falsey
    end
  end

  describe '#rent' do
    it 'can change apartment avaiablility' do
      apartment = Apartment.new      
      apartment.rent
      expect(apartment.rented).to be_truthy
    end
  end
end