gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'binary_search_tree'

class BinarySearchTreeTest < Minitest::Test

  def test_it_can_insert_a_root_node #need to test it returns depth
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_instance_of TreeNode, tree.root_node
    assert_equal 61, tree.root_node.value
    assert_equal "Bill & Ted's Excellent Adventure", tree.root_node.data
  end

  def test_if_the_value_is_greater_it_inserts_it_on_the_right_of_the_root_node
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(92, "Sharknado 3")
    assert_equal 92, tree.root_node.right.value
    assert_equal "Sharknado 3", tree.root_node.right.data
  end

  def test_if_the_value_is_less_it_inserts_it_on_the_left_of_the_root_node
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    assert_equal 16, tree.root_node.left.value
    assert_equal "Johnny English", tree.root_node.left.data
  end

  def test_its_root_node_has_a_depth_of_0
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 0, tree.root_node.depth
  end

  def test_it_can_return_whether_the_tree_contains_a_value
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    assert_equal true, tree.include?(92)
  end

end
