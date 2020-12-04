input = open("day2.txt").read.lines.map(&:split)

valid = 0

input.each do |i|
  minmax = i[0].split("-").map(&:to_i)
  range = minmax[0]..minmax[1]
  key = i[1].split("")[0]
  password = i[2]

  valid += 1 if range.include?(password.count(key))
end

puts valid
