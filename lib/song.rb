class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def artist_name
    if self.artist == nil
      nil
    else
      artist.name
    end
  end


# def artist
# end
end
