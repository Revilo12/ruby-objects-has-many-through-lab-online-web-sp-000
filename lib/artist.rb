class  Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(name, genre)
    song = Song.new(name)
    song.artist = self
    song.genre = genre
    Song.all << song
    song
  end

  def genres
    (self.songs.collect {|song| song.genre}).uniq
  end

end
