require_relative 'tree_node'

class BinarySearchTree
  attr_reader :root_node
  def initialize
    @root_node = nil
  end

  def insert(value, data)
    if @root_node == nil
      @root_node = TreeNode.new(value, data)
    elsif @root_node.value == value
      puts "There is already a node with that value"
    elsif value > @root_node.value
      @root_node.insert_right(value, data)
    else
      @root_node.insert_left
    end
  end
end
