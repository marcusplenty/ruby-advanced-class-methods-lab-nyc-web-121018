class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def self.create
    song = Song.new
  end
  def self.new_by_name(name)
    song1 = .new
    song1.name = name
  end

end
