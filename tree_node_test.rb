gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'tree_node'

class TreeNodeTest < Minitest::Test

  def test_it_has_a_value
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure")
    assert_equal 61, tree_node.value
  end

  def test_it_has_data
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure")
    assert_equal "Bill & Ted's Excellent Adventure", tree_node.data
  end

  def test_it_has_a_left_node
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure")
    assert_equal nil, tree_node.left
  end

  def test_it_has_a_right_node
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure")
    assert_equal nil, tree_node.right
  end
end
