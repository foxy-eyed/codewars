# https://www.codewars.com/kata/5375f921003bf62192000746

class Abbreviator
  def self.abbreviate(string)
    string.gsub(/[[:word:]]{4,}/) { |word| "#{word[0]}#{word.length - 2}#{word[-1]}" }
  end
end
