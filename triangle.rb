# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError, "Lados devem ser números maiores que zero." if [a, b, c].min <= 0
  a, b, c = [a, b, c].sort
  raise TriangleError, "A soma de dois lados não pode ser maior que o outro lado." if a + b <= c
  [:equilateral, :isosceles, :scalene].fetch([a, b, c].uniq.size - 1)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
