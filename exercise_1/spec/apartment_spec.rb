require './exercise_1/lib/apartment'
require './exercise_1/lib/room'

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

  describe '#add_room(room_object)' do
    it 'can add a maximum for 4 rooms to an apartment' do
      apartment = Apartment.new
      bathroom = Room.new("bathroom")
      apartment.add_room(bathroom)
      apartment.add_room(Room.new("laundry"))
      apartment.add_room(Room.new("kitchen"))
      apartment.add_room(Room.new("bedroom"))

      expect(apartment.rooms).to be_a Array
      expect(apartment.rooms.count).to eq 4
    end
  end

  describe '#list_rooms_by_name_alphabetically' do
    it 'list rooms in alpha order asc' do
      apartment = Apartment.new
      bathroom = Room.new("bathroom")
      laundry = Room.new("laundry")
      kitchen = Room.new("kitchen")
      bedroom = Room.new("bedroom")

      apartment.add_room(bathroom)
      apartment.add_room(laundry)
      apartment.add_room(kitchen)
      apartment.add_room(bedroom)

      expected = [bathroom, bedroom, kitchen, laundry]

      expect(apartment.list_rooms_by_name_alphabetically).to be_a Array
      expect(apartment.list_rooms_by_name_alphabetically).to eq(expected)
    end
  end
end