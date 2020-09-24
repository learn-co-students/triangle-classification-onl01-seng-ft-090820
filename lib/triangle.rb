class Triangle
  
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    # if a = b = c => equilateral
    # if a = b || b = c || a = c => isosceles
    # if a != b && b != c && a != c => scalene

    if valid_triangle1 == true && valid_triangle2 == true
      true
    else
      raise TriangleError
    end

    if side_a == side_b && side_b == side_c
      :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      :isosceles
    elsif side_a != side_b && side_b != side_c
      :scalene
    end
  end

  def valid_triangle1
    side_a.positive? && side_b.positive? && side_c.positive?
  end

  def valid_triangle2
    side_a + side_b > side_c && side_a + side_c > side_b && side_b + side_c > side_a
  end

  class TriangleError < StandardError
    #TriangleError code
  end

end
