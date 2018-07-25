class Artist

  attr_accessor :name, :song

  @@existing_artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@existing_artists << self
  end

  def self.all
    @@existing_artists
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end
end
