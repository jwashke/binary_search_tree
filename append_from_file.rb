class AppendFromFile
  def read_file
    File.open("movies.txt").readlines.each do |line|
      puts line
    end
  end
end

fileReader = AppendFromFile.new
fileReader.read_file
