class BinaryNode
  attr_accessor :height, :parent, :left, :right, :key, :value

  def initialize key, value, parent
    @key = key
    @value = value
    @parent = parent
    @height = 0
  end

  def is_leaf?
    height.zero?
  end

  def max_children_height
    if left && right
      [left.height, right.height].max
    elsif left
      left.height
    elsif right
      right.height
    else
      -1
    end
  end

  def balance_factor
    left_height = if left
                    left.height
                  else
                    -1
                  end

    right_height = if right
                     right.height
                   else
                     -1
                   end

    left_height - right_height
  end
end