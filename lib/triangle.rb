class Triangle
  
  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def validate
    if side_a > 0 && side_b > 0 && side_c > 0 && (side_a + side_b > side_c && side_b + side_c > side_a && side_a + side_c > side_b)
      true
    end
  end
  
  def kind
    if validate
      if side_a == side_b && side_b == side_c
        :equilateral
      elsif side_a == side_b || side_b == side_c || side_a == side_c
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    def message
      "This is not a triangle."
    end
  end
  
end
