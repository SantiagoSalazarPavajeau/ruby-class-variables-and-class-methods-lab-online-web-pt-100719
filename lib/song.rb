class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@genres << genre #self.genre unless @@genres.include?(self.genre)
    @@artists << artist unless @@genres.include?(artist)
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists
  end

end