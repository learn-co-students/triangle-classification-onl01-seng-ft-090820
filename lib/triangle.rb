class Triangle
  #
  attr_accessor :sides
  
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    @sides.sort!
  end 
  
  #instance method
  def kind
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  #raise error
  class TriangleError < StandardError
    
  end
end
