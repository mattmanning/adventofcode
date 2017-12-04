total = File.open('day4input.txt').each.inject(0) do |sum, phrase|
  words = phrase.split(' ')
  words == words.uniq ? sum + 1 : sum
end

puts total

