
class FileReader
  def read_file(file_name)
    array = File.open(file_name).readlines.map do |line|
              line.split(", ")
            end
            array
  end
end
