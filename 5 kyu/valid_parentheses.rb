# https://www.codewars.com/kata/52774a314c2333f0a7000688

def valid_parentheses(string)
  string.gsub!(/[^\(\)]/, '')

  return true if string.empty?
  return false if string[0] == ')'

  counter = 0
  string.each_char do |ch|
    counter += (ch == '(') ? 1 : -1
    break if counter < 0
  end

  counter.zero?
end
