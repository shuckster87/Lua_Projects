function main()
  print("please enter a letter or word for emojis (enter in lowercase)")
  local message = io.read()
  local msg = read_in(message)
  print(msg)
end

function read_in(msg)
  local letters = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y", "z" }
  local emojis = { "😊", "😄", "😎", "🦆", "😏", "🙃", "🐐", "😨", "👌", "😒", "👍", "🤔", "😍",
    "😐", "🍔", "🙌", "🤬", "💩", "🤩", "❤️", "😅", "🪂", "🥐", "😋", "🤣", "😶" }
  local finaloutput = ""
  msg:gsub(".", function(check) --substituting to check
    for a, b in ipairs(letters) do --returns the index value of the pair of the letter and emojis
      if b == check then
        finaloutput = finaloutput .. tostring(emojis[a]) --converting the letter to a emoji and adding it to the string
      end
    end
  end
  )
  return finaloutput;
end

main()
