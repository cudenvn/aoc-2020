input = open("day10.txt").read.split("\n").map(&:to_i).sort

diff = (input.map.with_index { |i, x| x == 0 ? i - 0 : i - input[x - 1] } << 3).tally
p diff[1] * diff[3]