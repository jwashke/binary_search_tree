require 'pry'
require 'pry-nav'
class TreeDoctor
  def initialize(root_node)
    @health_array =[]
    @number_of_nodes = count_nodes(root_node)
    #binding.pry
  end

  def health(node, depth)
    find_number_of_children(node) if depth == node.depth
    health(node.left, depth) if node.left != nil
    health(node.right, depth) if node.right != nil
    @health_array
  end

  def count_nodes(node)
    counter = 0
    counter += count_nodes(node.left) if node.left != nil
    counter += 1
    counter += count_nodes(node.right) if node.right != nil
    counter
  end

  def find_number_of_children(node)
    number_of_children = count_children(node)
    @health_array.push([node.value, number_of_children, ((number_of_children.to_f/@number_of_nodes) * 100).to_i])
  end

  def count_children(node)
    counter = 0
    counter += count_children(node.left) if node.left != nil
    counter += 1
    counter += count_children(node.right) if node.right != nil
    counter
  end
end
