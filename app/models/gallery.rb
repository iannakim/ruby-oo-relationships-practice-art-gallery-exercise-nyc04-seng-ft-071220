class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end


# * `Gallery#paintings`
# * Returns an `array` of all paintings in my gallery

def paintings
   Painting.all.select{|painting| painting.gallery == self}
  end


# * `Gallery#artists`
# * Returns an `array` of all artists that have a painting in my gallery

  def artists
    artist_array = paintings.map {|painting| painting.artist}
    artist_array.uniq
  end


# * `Gallery#artist_names`
# * Returns an `array` of the names of all artists that have a painting in my gallery  
  def artist_names
      artists.map {|artist_inst| artist_inst.name}
  end



# * `Gallery#most_expensive_painting`
# * Returns an `instance` of the most expensive painting in a gallery


  def most_expensive_painting
    price_array = Painting.all.map {|painting| painting.price}
      max_price = price_array.max

      Painting.all.find {|painting| painting.price == max_price}
  end



end






