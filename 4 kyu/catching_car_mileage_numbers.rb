# https://www.codewars.com/kata/52c4dd683bfd3b434c000292

def is_interesting(number, awesome_phrases) 
  return 2 if interesting?(number, awesome_phrases)
  return 1 if interesting?(number + 1, awesome_phrases) || interesting?(number + 2, awesome_phrases)
  0
end

def interesting?(number, awesome_phrases)
  str = number.to_s
  number > 99 && (awesome_phrases.include?(number) ||
    followed_by_all_zeros?(str) || same_digits?(str) ||
    sequence?(str) || polindrome?(str))
end

def followed_by_all_zeros?(str)
  str.reverse.to_i < 10
end

def same_digits?(str)
  str.squeeze.length == 1
end

def sequence?(str)
  sample = '0123456789' * 2
  sample.include?(str) || sample.reverse.include?(str)
end

def polindrome?(str)
  str.reverse == str
end
