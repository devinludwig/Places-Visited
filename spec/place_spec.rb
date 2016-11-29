require('place')
require('rspec')

describe(Place) do
  before() do
    Place.clear()
  end
 describe('#visited_places') do
   it "it lets you read the output" do
     test_place = Place.new('montana')
     expect(test_place.visited_places()).to(eq('montana'))
   end
 end

  describe('.all') do
    it "it will show nothing in the array" do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#save') do
    it "saves the place name to the all_places array" do
      test_place = Place.new('montana')
      test_place.save()
      expect(Place.all()).to(eq(['montana']))
    end
  end
end
