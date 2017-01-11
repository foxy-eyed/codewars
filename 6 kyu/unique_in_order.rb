# https://www.codewars.com/kata/unique-in-order/

def unique_in_order(iterable)
  arr = iterable.is_a?(String) ? iterable.chars : iterable
  arr.slice_when { |i, j| i != j }.map { |a| a.first }
end
