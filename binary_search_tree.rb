require_relative 'tree_node'

class BinarySearchTree
  attr_reader :root_node
  def initialize
    @root_node = nil
  end

  def insert(value, data)
    if @root_node == nil
      @root_node = TreeNode.new(value, data, 0)
    elsif @root_node.value == value
      puts "There is already a node with that value"
    else
      @root_node.insert(value, data)
    end
  end

  def include?(value)
    if @root_node == nil
      false
    else
      @root_node.include?(value)
    end
  end

end
