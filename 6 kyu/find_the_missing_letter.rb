# https://www.codewars.com/kata/5839edaa6754d6fec10000a2

def find_missing_letter(arr)
  arr.slice_when { |i, j| i.next != j }.to_a.first.pop.next
end
