# The Computer will Guess Your Card
This Lua code will guess your card. Only 1% can beat! Impossible to figure out.
> this is a joke

## Usage
```
lua guess-the-card.lua
```

Also compatable with LuaJIT
```
luajit guess-the-card.lua
```

## Code
```lua
-- made by @btd2010
function read()
  return io.read()
end

local acceptableValue = false
local faceValue = "None"
local suitValue = "None"

while not acceptableValue do
  os.execute("clear")
  print("I will guess your card. Enter a number according to the chart below..")
  print(
    """
    - 11: Ace
    - 12: King
    - 13: Queen
    - 14: Jack
    - 1-10: Face value
    """
  )

  local readValue = read()
  local readNum = tonumber(readValue)

  if readNum ~= nil then
    if readNum >= 1 and readNum <= 14 then
      acceptableValue = true

      if readNum == 1 then faceValue = "One" end
      if readNum == 2 then faceValue = "Two" end
      if readNum == 3 then faceValue = "Three" end
      if readNum == 4 then faceValue = "Four" end
      if readNum == 5 then faceValue = "Five" end
      if readNum == 6 then faceValue = "Six" end
      if readNum == 7 then faceValue = "Seven" end
      if readNum == 8 then faceValue = "Eight" end
      if readNum == 9 then faceValue = "Nine" end
      if readNum == 10 then faceValue = "Ten" end
      if readNum == 11 then faceValue = "Ace" end
      if readNum == 12 then faceValue = "King" end
      if readNum == 13 then faceValue = "Queen" end
      if readNum == 14 then faceValue = "Jack" end
    end
  end
end

acceptableValue = false

while not acceptableValue do
  os.execute("clear")
  print("I will guess your card. Enter the suit of your card..")
  print(
    """
    - 1: Spades
    - 2: Clubs
    - 3: Hearts
    - 4: Diamonds
    """
  )

  local readValue = read()
  local readNum = tonumber(readValue)

  if readNum ~= nil then
    if readNum >= 1 and readNum <= 4 then
      acceptableValue = true

      if readNum == 1 then suitValue = "Spades" end
      if readNum == 2 then suitValue = "Clubs" end
      if readNum == 3 then suitValue = "Hearts" end
      if readNum == 4 then suitValue = "Diamonds" end
    end
  end
end

print("Is your card...")
print("a " .. faceValue .. " of " .. suitValue .. "?")

os.exit(0)
```