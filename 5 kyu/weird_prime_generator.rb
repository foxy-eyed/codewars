# https://www.codewars.com/kata/562b384167350ac93b00010c

def count_ones(n)
  a = [7]
  ones = 1
  for i in 1..n - 1
    gcd = a[i - 1].gcd(i + 1)
    a << a[i - 1] + gcd
    ones += 1 if gcd == 1
  end
  ones
end

def max_pn(n)
  a = [7]
  p = []
  i = 1
  loop do
    gcd = a[i - 1].gcd(i + 1)
    a << a[i - 1] + gcd
    p << gcd unless gcd == 1 || p.include?(gcd)
    break if p.count == n
    i += 1
  end
  p.max
end

def an_over_average(n)
  a = [7]
  r = []
  i = 1
  loop do
    gcd = a[i - 1].gcd(i + 1)
    a << a[i - 1] + gcd
    r << a[i] / i if gcd != 1
    break if r.count == n
    i += 1
  end
  r.reduce(:+) / n
end
