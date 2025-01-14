require "pry"
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
    @@artists << artist #unless @@artists.include?(artist)
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    hash = Hash.new(0)
    @@genres.each { | genre | hash.store(genre, hash[genre]+1) } 
    hash
  end
  
  def self.artist_count
    hash = Hash.new(0)
    @@artists.each { | artist | hash.store(artist, hash[artist]+1) }
    hash
  end

end
