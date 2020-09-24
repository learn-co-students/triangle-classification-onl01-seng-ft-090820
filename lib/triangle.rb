class Triangle

attr_accessor :equilateral, :isosceles, :scalene, :first, :second, :third

def initialize(first, second, third)
@first = first 
@second = second 
@third = third
end

def validate 
 if self.first <= 0 || self.second <= 0 || self.third <= 0 || self.first + self.second <= self.third || self.first + self.third <= self.second || self.second + self.third <= self.first  
  raise TriangleError
end
end

def kind 
  validate 
  if self.first == self.second && self.second == self.third
    return :equilateral
    elsif self.second == self.third || self.first == self.third || self.first == self.second
    return :isosceles
    elsif self.first != self.second && self.second != self.third
    return :scalene
  else
# elsif self.first <= 0 || self.second <= 0 || self.third <= 0 || self.first + self.second <= self.third || self.first + self.third <= self.second || self.second + self.third <= self.first 
  begin 
  raise TriangleError
  rescue TriangleError => error 
  puts error.message
end 
end 
end
  

class TriangleError < StandardError
  def message
    puts "no."
end
end
end