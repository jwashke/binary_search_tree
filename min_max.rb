class MinMax

  def min(node)
    if node.left != nil
      min(node.left)
    else
      node.info
    end
  end

  def max(node)
    if node.right != nil
      min(node.right)
    else
      node.info
    end
  end
end
