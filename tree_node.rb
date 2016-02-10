require 'pry'
class TreeNode
  attr_reader :value, :data, :depth
  attr_accessor :left, :right

  def initialize(value, data, depth)
    @value = value
    @data = data
    @depth = depth
    @left = nil
    @right = nil
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
      @right = TreeNode.new(value, data, depth)
    else
      @right.insert(value, data)
    end
  end

  def insert_left(value, data, depth)
    if @left == nil
      @left = TreeNode.new(value, data, depth)
    else
      @left.insert(value, data)
    end
  end

  def include?(value)
    if  @value == value
      true
    elsif value > @value and @right != nil
      @right.include?(value)
    elsif @left != nil
      @left.include?(value)
    else
      false
    end
  end

  

end
