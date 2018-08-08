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
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.keys.include?(genre)
        genre_count[genre] += 1 
      else 
        genre_count << count[genre] => 1
      end 
    end 
    genre_count
  end 
  
  def self.artist_count 
    count = {}
    @@artists.each do |artist|
      if count.keys.include?(artist)
        count[artist] += 1 
      else 
        count << count[artist] => 1
      end 
    end 
    count
  end 
  
end 