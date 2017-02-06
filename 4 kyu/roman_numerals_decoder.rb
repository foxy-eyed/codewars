# https://www.codewars.com/kata/roman-numerals-decoder/

ROMAN = { 'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100,
          'XC' => 90, 'L' => 50, 'XL' => 40, 'X' => 10, 
          'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1 }

def solution(roman)
  number = 0
  prev_val = 0
  roman.each_char do |ch|
    val = ROMAN[ch]
    number += prev_val < val ? -prev_val : prev_val
    prev_val = val
  end
  number + prev_val
end
