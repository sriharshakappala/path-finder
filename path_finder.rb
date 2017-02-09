require 'pry'

def generatePaths(pebblePath)
  pattern = ""
  frogCurrent = 0
  while frogCurrent <= (pebblePath.length - 2)
    decision = whatToDo(pebblePath, frogCurrent)
    frogCurrent = frogCurrent + 1 if decision == 'A'
    frogCurrent = frogCurrent + 2 if decision == 'B'
    pattern << decision
  end
  return pattern
end

private

def whatToDo(pebblePath, frogCurrent)
  pebblePath[frogCurrent + 1] == ' ' ? 'B' : 'A'
end

path = generatePaths('pp pp pppp')
puts path
