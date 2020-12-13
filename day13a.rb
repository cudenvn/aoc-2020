input = open("day13.txt").read.split("\n")
time = input.first.to_i
ids = input.last.split(",").select { |x| x != "x" }.map(&:to_i).sort

arr = ids.map { |id| ((time / id) + 1) * id - time }
puts ids[arr.index(arr.min)] * arr.min
