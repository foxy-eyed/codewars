# https://www.codewars.com/kata/57b6f5aadb5b3d0ae3000611

def getLengthOfMissingArray(array_of_arrays)
  return 0 if array_of_arrays.nil? || array_of_arrays.compact! || array_of_arrays.include?([])
  break_point = array_of_arrays.map { |a| a.size }.sort.slice_when { |i, j| i + 1 != j }.to_a.first
  break_point ? break_point.pop + 1 : 0
end
