require 'pry'
class TreeNode
  attr_reader :value, :data, :depth, :info
  attr_accessor :left, :right

  def initialize(value, data, depth)
    @value = value
    @data = data
    @depth = depth
    @left = nil
    @right = nil
    @info = {data => value}
  end

  def insert(value, data)
    depth = @depth + 1
    if value == @value
      puts "There is already a node with that value."
    elsif value > @value
      insert_right(value, data, depth)
    else
      insert_left(value, data, depth)
    end
  end

  def insert_right(value, data, depth)
    if @right == nil
      create_new_right_node(value, data, depth)
    else
      @right.insert(value, data)
    end
  end

  def insert_left(value, data, depth)
    if @left == nil
      create_new_left_node(value, data, depth)
    else
      @left.insert(value, data)
    end
  end

  def create_new_right_node(value, data, depth) #need to test this
    @right = TreeNode.new(value, data, depth)
    depth
  end

  def create_new_left_node(value, data, depth) #need to test this
    @left = TreeNode.new(value, data, depth)
    depth
  end
end
