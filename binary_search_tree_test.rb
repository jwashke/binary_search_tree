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

  def test_it_can_sort_the_tree_into_an_array
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    assert_equal [{"Johnny English"=>16},{"Bill & Ted's Excellent Adventure"=>61},{"Sharknado 3"=>92}], tree.sort
  end

  def test_it_can_return_the_health_of_the_tree_at_a_given_depth
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    assert_equal [[16, 1, 33], [92, 1, 33]], tree.health(1)
    assert_equal [[61, 3, 100]], tree.health(0)
  end

  def test_it_can_return_the_min_value_of_the_tree
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    assert_equal ({"Johnny English"=>16}), tree.min
  end

  def test_it_can_return_the_max_value_of_the_tree
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    assert_equal ({"Sharknado 3"=>92}), tree.max
  end

  def test_it_can_load_movies_from_a_file
    tree = BinarySearchTree.new
    tree.load("movies.txt")
    assert_equal ({"Cruel Intentions"=>0}), tree.min
    assert_equal ({"Serenity"=>72}), tree.max
    assert_equal [[71, 100, 100]], tree.health(0)
  end

end
