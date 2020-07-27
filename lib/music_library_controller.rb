

class MusicLibraryController
  attr_accessor :path

  def initialize(path = './db/mp3s')
    @path = path
    importer = MusicImporter.new(path)
    importer.import
  end

  def call
    input = ''
    puts "Welcome to your music library!"
    gets(input)
  end

end
