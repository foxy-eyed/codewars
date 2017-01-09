# https://www.codewars.com/kata/54d4c8b08776e4ad92000835

def isPP(n)
  for k in 2..Math.log2(n)
    m = (n**(k**-1)).round(14)
    return [m.to_i, k] if (m % 1).zero? && m != n
  end
  nil
end
