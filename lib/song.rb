require 'pry'
require_relative 'artist.rb'

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(song_name)
    @name = song_name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist
    @artist
  end

  def artist_name
    if artist
      self.artist.name
    else
      nil
    end
  end
end
