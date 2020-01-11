class Song
  attr_accessor :artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.all << self
  end

  def self.all
    @@all
  end
end
