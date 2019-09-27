class Triangle
  attr_accessor :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  
  def kind
    if side_one == side_two && side_two == side_three
      :equilateral
    elsif side_one == side_two && side_two != side_three
      :iso
  
  
  
  class TriangleError < StandardError
  end
end
