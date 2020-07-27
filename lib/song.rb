

class Song

  attr_accessor :name, :artist, :genre
  @@all = []
  extend Concerns::Findable

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist
    self.genre = genre
  end

  def artist=(artist)
    if artist != nil
      @artist = artist
      artist.add_song(self)
    end
  end

  def genre=(genre)
    if genre != nil && !(genre.songs.include?(self))
      @genre = genre
      genre.songs << (self)
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
