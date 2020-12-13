input = open("day9.txt").read.split("\n")

input.each_with_index do |num, i|
  temp = input[i, 25]
  puts temp.inspect
end