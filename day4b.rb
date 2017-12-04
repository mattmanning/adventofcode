total = File.open('day4input.txt').each.inject(0) do |sum, phrase|
  words = phrase.split(' ').map { |word| word.split('').sort.join }
  words == words.uniq ? sum + 1 : sum
end

puts total
