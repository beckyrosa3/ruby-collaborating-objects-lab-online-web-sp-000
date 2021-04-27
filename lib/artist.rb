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
    Song.all.map do |song_list| if == @song
    song_list
    end
  end

  def self.find_or_create_by_name

  end

  def print_songs

  end
end
