class Triangle
  attr_accessor :triangle_side

  @@all = []

  def initialize(triangle_side1, triangle_side2, triangle_side3)
    @triangle_side = [triangle_side1, triangle_side2, triangle_side3]
    @triangle_side.sort!
  end

  def kind
    if @triangle_side.any? {|side| side <= 0} || ((@triangle_side[0] + @triangle_side[1]) <= @triangle_side[2])
      raise TriangleError
      elsif @triangle_side.uniq.length == 1
        :equilateral
      elsif @triangle_side.uniq.length == 2
        :isosceles
      else 
        :scalene
    end
    
  end

  class TriangleError < StandardError
  end
end
