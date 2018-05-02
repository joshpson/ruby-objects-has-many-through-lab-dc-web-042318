require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    #adds a new song to the artist's
    #@songs array and tells that song
    #that it belongs to the artist
    song.artist = self
    @songs << song
  end

  def genres
    #find genres in songs
    @songs.map {|song| song.genre}
  end

end
