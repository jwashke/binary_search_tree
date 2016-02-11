gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'tree_doctor'
require_relative 'tree_node'

class TreeDoctorTest < Minitest::Test

  def test_health_method_takes_a_node_and_a_depth_and_returns_a_nested_array
    node = TreeNode.new(61, "Movie Title", 0)
    doctor = TreeDoctor.new(node)
    assert_equal [[61, 1, 100]], doctor.health(node, 0)
  end

  def test_it_counts_the_nodes
    node = TreeNode.new(61, "Movie Title", 0)
    doctor = TreeDoctor.new(node)
    assert_equal 1, doctor.count_nodes(node)
  end

  def test_it_counts_the_number_of_children_including_itself
    node = TreeNode.new(61, "Movie Title", 0)
    doctor = TreeDoctor.new(node)
    assert_equal 1, doctor.count_children(node)
  end

  def test_it_returns_a_nested_array_with_the_wanted_values
    node = TreeNode.new(61, "Movie Title", 0)
    doctor = TreeDoctor.new(node)
    assert_equal [[61, 1, 100]], doctor.find_number_of_children(node)
  end

end
