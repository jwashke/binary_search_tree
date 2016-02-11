
class FileReader
  def read_file
    array = File.open("movies.txt").readlines.map do |line|
              line.split(", ")
            end
            array
  end
end
