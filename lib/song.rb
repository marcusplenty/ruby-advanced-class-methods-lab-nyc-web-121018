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
    song = Song.new
    @@all << song 
  end
  def self.new_by_name(name)
    song1 = self.new
    song1.name = name
  end

end
