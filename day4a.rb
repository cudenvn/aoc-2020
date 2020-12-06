input = open("day4.txt").read.split("\n\n").map { |s| s.split(/\s+/) }

count = 0

input.each do |passport|
  count += 1 if passport.count == 8 || passport.count == 7 && !passport.any? { |key| key.start_with?("cid") }
end

puts count
