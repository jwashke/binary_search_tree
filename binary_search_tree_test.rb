gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'binary_search_tree'

class BinarySearchTreeTest < Minitest::Test

  def test_it_can_insert_a_root_node
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_instance_of TreeNode, tree.root_node
    assert_equal 61, tree.root_node.value
    assert_equal "Bill & Ted's Excellent Adventure", tree.root_node.data
  end

  def it_ignores_inserting_a_node_with_the_same_value
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(61, "Jurassic Park")
    assert_equal "Bill & Ted's Excellent Adventure", tree.root_node.data
  end

  def if_the_value_is_greater_it_inserts_it_on_the_right_of_the_root_node
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(92, "Sharknado 3")
    assert_equal 92, tree.root_node.right.value == 92
    assert_equal "Sharknado 3", tree.root_node.right.data
  end

  def if_the_value_is_less_it_inserts_it_on_the_left_of_the_root_node

  end

end
