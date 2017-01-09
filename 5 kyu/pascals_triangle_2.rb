# https://www.codewars.com/kata/52945ce49bb38560fe0001d9

def pascal(depth)
  result = [[1]]
  for n in 1..depth-1
    result.push([1])
    for i in 0..n-1
      result[n].push(result[n][i] * (n - i) / (i + 1))
    end
  end
  result
end
