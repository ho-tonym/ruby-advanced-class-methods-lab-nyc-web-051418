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

  def self.create_by_name(song)
    song = self.create
    song.name = song_name
    @@all << song
    song
  end
end
