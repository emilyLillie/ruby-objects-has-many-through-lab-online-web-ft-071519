class Genre 
  attr_accessor :name, :song
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end 
  
  def artists
    Song.all.map do |song|
      song.artist
    end
  end
  
  def self.all 
    @@all
  end 
  
end 