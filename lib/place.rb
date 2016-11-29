class Places
  @@all_places = []

  def initialize(place_name)
    @place_name = place_name
  end

  define_singleton_method(:clear) do
    @@all_places = []
  end

  def visited_places
    @place_name
  end
end
