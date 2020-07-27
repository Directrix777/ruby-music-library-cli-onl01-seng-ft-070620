

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
    puts "To list all of your songs, enter 'list songs'."
    gets(input)
  end

end
