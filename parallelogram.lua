function main()
  print("enter perimeter or area to solve for on a paralleogram")
  local decision = io.read()
  print("now enter a number for the base or length:")
  local num1 = io.read()
  print("now enter another number for the width or height")
  local num2 = io.read()

  local equation
  if decision == "perimeter" then
    equation = perimeter_parallelogram(num1, num2)
  elseif decision == "area" then
    equation = area_parallelogram(num1, num2)
  else
    print("You didn't enter perimeter or area. Try again!")
  end
  print("the equation you chose is: ", decision)
  print("the value from the equation is: ", equation)
end

function perimeter_parallelogram(length, height)
  local p = 0
  p = 2 * (length + height)
  return p
end

function area_parallelogram(base, width)
  local a = 0
  a = base * width
  return a
end

main()
