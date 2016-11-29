require('place')
require('rspec')

describe(Places) do
  before() do
    Places.clear()
  end
 describe('#visited_places') do
   it "it lets you read the output" do
     test_place = Places.new('montana')
     expect(test_place.visited_places()).to(eq('montana'))
   end
 end

  describe('.all') do
    it "it will show nothing in the array" do
      expect(Places.all()).to(eq([]))
    end
  end
end
