class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
  artist_name, name =  file_name.chomp.split(' - ')[1]
  Song.new(name)
  end

  def artist_name

  end

end
