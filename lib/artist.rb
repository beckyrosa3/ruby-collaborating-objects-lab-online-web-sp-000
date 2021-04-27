class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
      song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
  end
end

  def self.find_by_name(name)
    self.all.find do |artist|
      artist.name == name
    end
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.new
  end

  def print_songs

  end
end
