gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'sort_tree'
require_relative 'binary_search_tree'

class SortTreeTest < Minitest::Test

  def test_it_pushes_a_root_node_to_the_array
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    sorted_array = tree.sort
    assert_equal ({"Bill & Ted's Excellent Adventure"=>61}), sorted_array[0]
  end

  def test_it_pushes_nodes_to_the_array_by_value
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(92, "Sharknado 3")
    tree.insert(16, "Johnny English")
    sorted_array = tree.sort
    assert_equal ({"Johnny English"=>16}), sorted_array[0]
    assert_equal ({"Bill & Ted's Excellent Adventure"=>61}), sorted_array[1]
    assert_equal ({"Sharknado 3"=>92}), sorted_array[2]
  end

end
