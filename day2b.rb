input = open("day2.txt").read.lines.map(&:split)

valid = 0

input.each do |i|
  minmax = i[0].split("-").map(&:to_i)
  key = i[1].split("")[0]
  password = i[2]

  valid += 1 if (password[minmax[0] - 1] == key) ^ (password[minmax[1] - 1] == key)
end

puts valid
