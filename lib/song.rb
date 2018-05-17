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
    song
  end
  def new_by_name(song_of_name)
    song = self.new
    song.name = song_of_name
    song
  end

  def self.create_by_name(song)
    song = self.create
    song.name = song_name
    #@@all << song
    song
  end

  def self.find_by_name(song_name)
    @@all.find do |element|
      element.name == song_name
    end
  end

##################
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      Song.create_by_name(name)
    end
  end

  def self.alphabetical
    @@all.sort { |x, y| x.name <=> y.name }
  end

  def Song.new_from_filename(filename)
    song = Song.new
    names = filename.split(/(?:.mp3)|(?: - )/)
    song.artist_name = names[0]
    song.name = names[1]
    song
  end

  def Song.create_from_filename(filename)
    song = Song.new
    names = filename.split(/[.]|(?: - )/)
    song.artist_name = names[0]
    song.name = names[1]
    @@all << song
  end

  def Song.destroy_all
    @@all.clear
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
