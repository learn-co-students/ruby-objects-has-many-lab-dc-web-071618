require "pry"

class Artist

  attr_accessor :name
  attr_reader :songs

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song
    @@songs << song
    song.artist = self
  end

  def self.song_count
    @@songs.count
  end

# binding.pry
end
