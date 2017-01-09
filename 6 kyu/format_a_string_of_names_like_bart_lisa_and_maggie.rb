# https://www.codewars.com/kata/53368a47e38700bd8300030d

def list(names)
  names.map! { |item| item[:name] }
  last = names.pop || ''
  names.empty? ? last : [names.join(', '), last].join(' & ')
end
