require 'pry'

class Genre

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    #find artists through songs
    @songs.map {|song| song.artist}
  end

end
