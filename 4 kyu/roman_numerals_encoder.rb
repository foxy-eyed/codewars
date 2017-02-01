# https://www.codewars.com/kata/51b62bf6a9c58071c600001b

MATRIX = { numbers: [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1],
           roman:   ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'] }

def solution(number)
  roman = ''
  i = 0
  while number > 0 do 
    while number >= MATRIX[:numbers][i] do
      roman << MATRIX[:roman][i]
      number -= MATRIX[:numbers][i]
    end
    i += 1
  end
  roman
end
