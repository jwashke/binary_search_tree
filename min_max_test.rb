gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'min_max'
require_relative 'tree_node'

class MinMaxTest < Minitest::Test

  def test_it_returns_the_min_node
    min_max = MinMax.new
    node = TreeNode.new(61, "Movie Title", 0)
    assert_equal ({"Movie Title"=>61}), min_max.min(node)
  end

  def test_it_returns_the_max_node
    min_max = MinMax.new
    node = TreeNode.new(61, "Movie Title", 0)
    assert_equal ({"Movie Title"=>61}), min_max.max(node)
  end
end
