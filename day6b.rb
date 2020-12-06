input = open("day6.txt").read.split("\n\n").map { |s| s.split(/\s+/) }

puts input.reduce(0) { |sum, group| sum + group.map(&:chars).reduce(:&).size }