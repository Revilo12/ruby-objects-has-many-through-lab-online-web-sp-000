class Song 
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