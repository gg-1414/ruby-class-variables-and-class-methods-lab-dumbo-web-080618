class Song 
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre 
  
  def initialize 
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end 
  
  def self.count 
    @@count
  end 
  
  def self.genres 
    @@genres
  end 
  
  def self.artists 
    @@artists
  end 
  
  def self.genre_count 
    count = {}
    @@genres.each do |genre|
      if count.keys.include?(genre)
        count[genre] += 1 
      else 
        count[genre] => 1
      end 
    end 
    count
  end 
  
  def self.artist_count 
    count = {}
    @@artists.each do |artist|
      if count.keys.include?(artist)
        count[artist] += 1 
      else 
        count[artist] => 1
      end 
    end 
    count
  end 
  
end 