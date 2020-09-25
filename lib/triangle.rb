class Triangle
  
  attr_accessor :one, :two, :three 
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
    self.illegal
  end
  
  def kind 
    if (@one == @two) && (@two == @three) && (@one == @three)
      :equilateral
    elsif (@two == @three) || (@one == @three) || (@one == @two)
      :isosceles
    elsif (@one != @two) && (@two != @three) && (@two != @three)
      :scalene
    end
  end
 
  def illegal
    if (@one <= 0) || (@two <= 0) || (@three <= 0)
        raise TriangleError
    elsif (@one + @two <= @three) || (@one + @three <= @two) || (@two + @three <= @one)
        raise TriangleError
    end
  end
  
  class TriangleError < StandardError
 
  end

end
