input = open("day3.txt").read.lines.map(&:strip)

pos = 0
trees = 0

input.shift

for i in input
  pos += 3
  trees += 1 if i[pos % i.length].include?("#")
end

puts trees
