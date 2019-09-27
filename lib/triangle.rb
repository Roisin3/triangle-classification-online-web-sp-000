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
    elsif (side_one == side_two && side_two != side_three) || (side_one == side_three && side_two != side_three) || (side_one != side_two && side_two == side_three)
      :isosceles
    else
      :scalene
    end
  end
  
  def validate
    valid_triangle = [(side_one + side_two > side_three), (side_one + side_three > side_two), (side_two + side_three > side_one)]
    [side_one, side_two, side_three].each {|x| valid_triangle << false if x <= 0}
    raise TriangleError if valid_triangle.include?(false)
  end
  
  class TriangleError < StandardError
  end
end
