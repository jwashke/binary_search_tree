class Find

  def include?(node, value)
    if  node.value == value
      true
    elsif value > node.value and node.right != nil
      include?(node.right, value)
    elsif node.left != nil
      include?(node.left, value)
    else
      false
    end
  end

  def depth_of(node, value)
    if  node.value == value
      node.depth
    elsif value > node.value and node.right != nil
      depth_of(node.right, value)
    elsif node.left != nil
      depth_of(node.left, value)
    else
      nil
    end
  end
end
