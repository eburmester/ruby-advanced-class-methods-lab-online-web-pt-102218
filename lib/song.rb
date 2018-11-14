class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new 
    song.all << song
    song
  end
  
  def self.new_by_name(title)
    song = self.new 
    song.name = title 
    title 
  end
end
