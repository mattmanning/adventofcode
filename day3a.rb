N = 347991

square_of = Math.sqrt(N).round
squre = square_of ** 2
moves = (square_of - 1) + (N - squre)

puts moves