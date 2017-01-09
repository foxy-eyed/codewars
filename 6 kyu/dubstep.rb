# https://www.codewars.com/kata/551dc350bf4e526099000ae5

def song_decoder(song)
  words = song.split('WUB')
  words.keep_if { |word| !word.empty? }
  words.join(' ')
end
