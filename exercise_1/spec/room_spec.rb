require './exercise_1/lib/room'

RSpec.describe Room do
  
  describe '#initialize(name)' do
    it 'exists and has attributes' do
      bathroom = Room.new("bathroom")
      expect(bathroom).to be_a Room
      expect(bathroom.name).to be_a String
      expect(bathroom.name).to eq 'bathroom'
    end
  end
end