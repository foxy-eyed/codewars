# https://www.codewars.com/kata/cat-kata-part-1

def peaceful_yard(yard, min_distance)
  cat_location = find_cats(yard)
  return true if cat_location.size < 2

  cat_location.combination(2).to_a.each do |pair|
    return false if min_distance > Math.hypot(*pair.transpose.map { |x| x.reduce(:-) })
  end
  true
end

def find_cats(yard)
  cat_location = []
  yard.each_with_index do |line, y|
    line.chars.each_with_index do |v, x|
      cat_location << [y, x] if v != '-'
    end
  end
  cat_location
end
