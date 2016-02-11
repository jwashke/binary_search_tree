gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'file_reader'

class FileReaderTest < Minitest::Test
  def test_it_can_read_from_a_file_and_store_it_in_an_array
    file_reader = FileReader.new
    array = file_reader.read_file("movies.txt")
    assert_equal 100, array.length
  end
end
