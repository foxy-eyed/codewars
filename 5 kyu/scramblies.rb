# https://www.codewars.com/kata/55c04b4cc56a697bb0000048

def scramble(s1, s2)
  s2.chars.each do |c|
    return false unless i = s1.index(c)
    s1.slice!(i)
  end
  true
end
