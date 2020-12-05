input = open("day3.txt").read.lines.map(&:strip)

results = 1
arr = [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]]
input.shift

arr.each do |a|
  pos = 0
  trees = 0
  skip = a[1]
  for i in 1..input.length
    next if i % skip != 0
    pos += a[0]
    trees += 1 if input[i - 1][pos % input[i - 1].length].include?("#")
  end

  results *= trees
end

puts results

# THIS IS DISGUSTING, I HAVE NOT GOT THe FAINTEST CLUE WHY IT WORKS, NEXT!
