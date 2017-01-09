# https://www.codewars.com/kata/54b80308488cb6cd31000161

def group_check(s)
  loop do
    replacements = s.gsub!(/(\{\}|\(\)|\[\])/, '')
    break unless replacements
  end
  
  return s.empty?
end
