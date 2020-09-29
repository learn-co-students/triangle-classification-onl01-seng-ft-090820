class Triangle
  #
  attr_accessor :sides
  
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    @sides.sort!
  end 
  
  
end
