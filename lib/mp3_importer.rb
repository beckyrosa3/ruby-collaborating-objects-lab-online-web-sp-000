class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).delete_if{|filename| [".",".."].include? filename}
  end
end
