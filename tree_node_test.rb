gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'tree_node'

class TreeNodeTest < Minitest::Test

  def test_it_has_a_value
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    assert_equal 61, tree_node.value
  end

  def test_it_has_data
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    assert_equal "Bill & Ted's Excellent Adventure", tree_node.data
  end

  def test_it_has_a_left_node
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    assert_equal nil, tree_node.left
  end

  def test_it_has_a_right_node
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    assert_equal nil, tree_node.right
  end

  def test_it_ignores_inserting_a_node_with_the_same_value
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    tree_node.insert(61, "Jurassic Park")
    assert_equal "Bill & Ted's Excellent Adventure", tree_node.data
  end

  def test_it_inserts_on_the_right_node_if_the_value_is_greater#need to test it returns depth
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    tree_node.insert(92, "Sharknado 3")
    assert_equal 92, tree_node.right.value
    assert_equal "Sharknado 3", tree_node.right.data
  end

  def test_it_inserts_it_on_the_left_node_if_the_value_is_less
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    tree_node.insert(16, "Johnny English")
    assert_equal 16, tree_node.left.value
    assert_equal "Johnny English", tree_node.left.data
  end

  def test_it_returns_the_depth_of_the_new_node_when_a_node_is_inserted

  end

  def test_inserting_to_its_right_node_increases_its_depth_by_1
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    tree_node.insert(92, "Sharknado 3")
    assert_equal tree_node.depth + 1, tree_node.right.depth
  end

  def test_inserting_to_its_left_node_increases_its_depth_by_1
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    tree_node.insert(16, "Johnny English")
    assert_equal tree_node.depth + 1, tree_node.left.depth
  end

  def test_it_can_return_whether_its_left_or_right_node_contains_a_value
    tree_node = TreeNode.new(61, "Bill & Ted's Excellent Adventure", 0)
    tree_node.insert(92, "Sharknado 3")
    tree_node.insert(16, "Johnny English")
    assert_equal true, tree_node.include?(92)
    assert_equal false, tree_node.include?(100)
    assert_equal true, tree_node.include?(16)
    assert_equal false, tree_node.include?(5)
  end

end
