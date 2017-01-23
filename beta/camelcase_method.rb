# https://codewars.com/kata/camelcase-method

class String
  def camelcase
    split.map(&:capitalize).join
  end
end
