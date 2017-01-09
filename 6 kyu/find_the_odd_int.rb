# https://www.codewars.com/kata/54da5a58ea159efa38000836

def find_it(seq)
  seq.group_by { |v| v }.select { |k, v| v.size.odd? }.keys[0]
end
