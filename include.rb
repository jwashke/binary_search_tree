class Find

  def include?(node, value)
    if  node.value == value
      true
    elsif value > node.value and node.right != nil
      node.right.include?(value)
    elsif node.left != nil
      node.left.include?(value)
    else
      false
    end
  end
end
