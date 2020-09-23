class Triangle
  attr_reader :l, :r, :b

  def initialize(l, r, b)
    @l = l
    @r = r
    @b = b
  end

  def kind
    if (l < 0 || r < 0 || b < 0) || (l + r <= b || r + b <= l || l + b <= r)
      raise TriangleError
    elsif l == 0 && r == 0 && b == 0
      raise TriangleError
    elsif l == r && r == b && l == b
      :equilateral
    elsif l == r || r == b || l == b
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end

