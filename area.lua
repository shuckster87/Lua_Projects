function main()
  print("Hello please enter a number 1-3 (1 for area of a rectangle, 2 for area of a triangle, 3 for area of a circle):")
  local num = io.read()

  local answer
  if num == "1" then
    answer = rectanglearea()
  elseif num == "2" then
    answer = trianglearea()
  elseif num == "3" then
    answer = circlearea()
  else
    print("sorry you didn't enter a number 1-3. try again!")
  end

  print("the number you entered in is: ", num)
  print("the area is: ", answer)
end

function rectanglearea()
  print("please enter a number for the length of the rectangle: ")
  local length = io.read()
  print("please enter another number for the width of the rectangle")
  local width = io.read()
  local rectangle_area
  rectangle_area = length * width
  return rectangle_area
end

function trianglearea()
  print("please enter a number for the base of the triangle: ")
  local base = io.read()
  print("please enter another number for the height of the triangle: ")
  local height = io.read()
  local triangle_area
  triangle_area = .5 * (base * height)
  return triangle_area
end

function circlearea()
  print("please enter a number for the radius of the circle: ")
  local radius = io.read()
  local circle_area
  circle_area = 3.14 * (radius ^ 2)
  return circle_area
end

main()
