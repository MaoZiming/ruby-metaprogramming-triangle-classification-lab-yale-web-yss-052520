class Triangle
  # write code here

  attr_accessor :one, :two, :three
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if one + two <= three || two + three <= one || three + one <= two || one == 0 || two == 0 || three == 0
      raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    else 
      if one == two && two == three
        return :equilateral
      end
      if one == two || two == three || three == one
        return :isosceles
      end
      if one != two && two != three && one != three
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Wrong"
    end
  end
end
