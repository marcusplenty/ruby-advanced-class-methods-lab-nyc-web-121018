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
    s = self.new
    @@all << s
    return s
    
  end
  def self.new_by_name(name)
    song = self.new
    song.name = name
    @@all << song 
    return song 
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song 
    return song 
  end 
  
  def self.find_by_name(name)
    self.all.find do |song|
      song.name == name
    end
    
  end 

end
