class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery_inst, artist_inst)
    @title = title
    @price = price
    @artist = artist_inst
    @gallery = gallery_inst
    @@all << self
  end

  def self.all
    @@all
  end



# * `Painting.total_price`
# * Returns an `integer` that is the total price of all paintings
  def self.total_price
   price_array = self.class.all.map {|painting| painting.price}
    sum = price_array.sum
    sum
  end


  # def self.total_price
  #   Painting.all.sum(&:price)
  # end 

end


