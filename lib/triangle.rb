class Triangle
  
  attr_accessor :side_1, :side_2, :side_3, :equilateral, :isosceles, :scalene
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def equilateral
    if self.side_1 == self.side_2 && self.side_1 == self.side_3
      true 
    end 
    end 
    
  def isosceles
    if self.side_1 == self.side_2 || self.side_1 == self.side_3 || self.side_2 == self.side_3
      true 
    end   
  end 
  
  def kind
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else 
    if self.equilateral == true 
      :equilateral
    elsif self.isosceles == true 
      :isosceles
    else 
      :scalene
    end 
    end 
  end   
  
  class TriangleError < StandardError
    def message
      "Some don't look right."
    end 
  end 
end 
