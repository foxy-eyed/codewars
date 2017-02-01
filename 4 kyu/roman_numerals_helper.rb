# https://www.codewars.com/kata/51b66044bce5799a7f000003

class RomanNumerals
  MATRIX = { numbers: [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1],
           roman:   ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I'] }

  def self.to_roman(number)
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

  def self.from_roman(roman)
    number = 0
    prev_val = 0
    roman.each_char do |ch|
      val = MATRIX[:numbers][MATRIX[:roman].index(ch)]
      number += prev_val < val ? -prev_val : prev_val
      prev_val = val
    end
    number + prev_val
  end
end
