class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
   @a = a 
   @b = b 
   @c = c 
  end

  def kind
    if checks_length == true && is_a_triangle == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if a == b && b == c && a == c
      :equilateral
    elsif a != b && b != c && a != c
      :scalene 
    else 
      :isosceles
    end 
  end
  
  def checks_length 
    a.positive? && b.positive? && c.positive?
  end 
  
  def is_a_triangle 
    a + b > c && a + c > b  && b + c > a
  end 
  
  class TriangleError < StandardError
  end
end


