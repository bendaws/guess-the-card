function read()
  return io.read()
end

local acceptableValue = false

while not acceptableValue do
  os.execute("clear")
  print("Guess the card. Enter a number according to the chart below..")
  print(
    """
    - 10: Ace
    - 11: King
    - 12: Queen
    - 13: Jack
    - 1-10: Face value
    """
  )

  local readValue = read()
  local readNum = tonumber(readValue)

  if readNum ~= nil then
    if readNum >= 1 and readNum <= 14 then
      acceptableValue = true
    end
  end
end
