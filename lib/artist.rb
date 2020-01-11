class  Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.all << self
  end

  def self.all
    @@all
  end

  def songs
