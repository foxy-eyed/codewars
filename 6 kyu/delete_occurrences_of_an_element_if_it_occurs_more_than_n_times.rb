# https://www.codewars.com/kata/554ca54ffa7d91b236000023

def delete_nth(order, max_e)
  result = []
  order.each { |item| result.push(item) if result.count(item) < max_e }
  result
end
