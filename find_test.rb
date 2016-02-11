gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'find'
require_relative 'tree_node'

class FindTest < Minitest::Test

  def test_include_returns_true_if_node_equals_value
    node = TreeNode.new(61, "Movie Title", 0)
    finder = Find.new
    assert_equal true, finder.include?(node, 61)
  end

  def test_include_returns_false_if_there_is_no_match
    node = TreeNode.new(61, "Movie Title", 0)
    finder = Find.new
    assert_equal false, finder.include?(node, 100)
  end

  def test_depth_of_returns_depth_of_given_value_in_tree
    node = TreeNode.new(61, "Movie Title", 0)
    finder = Find.new
    assert_equal 0, finder.depth_of(node, 61)
  end

  def test_depth_of_returns_nil_if_value_is_not_in_tree
    node = TreeNode.new(61, "Movie Title", 0)
    finder = Find.new
    assert_equal nil, finder.depth_of(node, 100)
  end
end
