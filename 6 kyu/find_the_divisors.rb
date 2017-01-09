# https://www.codewars.com/kata/544aed4c4a30184e960010f4

def divisors(n)
  result = []
  for i in 2..Math.sqrt(n).floor
    if n.modulo(i).zero?
      result << i
      result << (n / i) if i != n / i
    end
  end
  result.empty? ? "#{n} is prime" : result.sort
end
