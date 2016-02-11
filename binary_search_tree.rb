require_relative 'tree_node'
require_relative 'sort_tree'
require_relative 'tree_doctor'
require_relative 'min_max'
require_relative 'find'
require_relative 'file_reader'

class BinarySearchTree
  attr_reader :root_node
  def initialize
    @root_node = nil
  end


    def insert(value, data)
      if @root_node == nil
        create_root_node(value, data)
      else
        @root_node.insert(value, data)
      end
    end

  def create_root_node(value, data)
    @root_node = TreeNode.new(value, data, 0)
    0
  end

  def include?(value)
    if @root_node == nil
      nil
    else
      finder = Find.new
      finder.include?(@root_node, value)
    end
  end

  def depth_of(value)
    if @root_node == nil
      false
    else
      finder = Find.new
      finder.depth_of(@root_node, value)
    end
  end

  def sort
    tree_sorter = SortTree.new
    tree_sorter.sort(@root_node)
  end

  def health(depth)
    tree_doctor = TreeDoctor.new(@root_node)
    tree_doctor.health(@root_node, depth)
  end

  def min
    min = MinMax.new
    min.min(@root_node)
  end

  def max
    max = MinMax.new
    max.max(@root_node)
  end

  def load(file_name)
    file_reader = FileReader.new
    array_of_movies = file_reader.read_file(file_name)
    array_of_movies.each do |node|
      insert(node[0].to_i, node[1].chomp)
      #binding.pry
    end
    array_of_movies.length
  end
end
