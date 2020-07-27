

class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist
  end

  def artist=(artist)
    if artist != nil
      @artist = artist
      artist.add_song(self)
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end

end
