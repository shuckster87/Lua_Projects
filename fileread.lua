print("Hello please enter a name of a file")
local file_name = io.read()
local file = io.open(file_name, "r")
if not file then
  return nil
end
for line in file:lines() do
  print(line)
end
file:close()
