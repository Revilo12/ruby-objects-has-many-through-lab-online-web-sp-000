class Genre
  attr_accessor :songs
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
    Songs.all.select {|song| song.genre = self}
  end

end
