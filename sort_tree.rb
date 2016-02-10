class SortTree
  def initialize
    @sorted_array = []
  end

  def sort(node)
    sort(node.left) if node.left != nil
    @sorted_array.push(node.info)
    sort(node.right) if node.right != nil
    @sorted_array
  end
end
