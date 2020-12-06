input = open("day4.txt").read.split("\n\n").map { |s| s.split(/\s+/) }

count = 0

input.each do |passport|
  hash = {}
  passport.each do |str|
    pair = str.split(":")

    hash[pair[0].to_sym] = pair[1]
  end

  # Validations
  next unless hash[:byr] && hash[:iyr] && hash[:eyr] && hash[:hgt] && hash[:hcl] && hash[:ecl] && hash[:pid]
  next unless hash[:byr].between?("1920", "2002")
  next unless hash[:iyr].between?("2010", "2020")
  next unless hash[:eyr].between?("2020", "2030")

  height = hash[:hgt].scan(/\d+|\D+/)
  next if height.count != 2
  if height[1] == "cm"
    next unless height[0].between?("150", "193")
  else
    next unless height[0].between?("59", "76")
  end

  next unless hash[:hcl].match?(/^#(?:[0-9a-fA-F]{3}){1,2}$/)
  next unless %w[amb blu brn gry grn hzl oth].include?(hash[:ecl])
  next unless hash[:pid].match?(/^[0-9]{9}$/)

  count += 1
end

puts count
