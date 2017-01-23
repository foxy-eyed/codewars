# https://www.codewars.com/kata/517abf86da9663f1d2000003

def to_camel_case(str)
  words = str.split(%r{[_-]})
  [words.shift, words.map(&:capitalize)].join
end
