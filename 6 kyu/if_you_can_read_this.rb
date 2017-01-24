# https://www.codewars.com/kata/if-you-can-read-this-dot-dot-dot

NATO = %w(Alfa Bravo Charlie Delta Echo Foxtrot Golf Hotel India Juliett Kilo Lima Mike November Oscar Papa Quebec Romeo Sierra Tango Uniform Victor Whiskey Xray Yankee Zulu).freeze
TABLE = ('a'..'z').zip(NATO).to_h
def to_nato(words)
	words.downcase.chars
		.each_with_object([]) { |ch, output| output << (TABLE[ch].nil? ? ch : TABLE[ch]) }
		.join(' ')
		.squeeze(' ')
end
