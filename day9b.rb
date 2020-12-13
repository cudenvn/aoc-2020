input = open("day9.txt").read.split("\n").map(&:to_i)

input.each_with_index do |num, i|
  temp = input[i, 25]
  next_number = input[i + 25]

  nums = temp.select { |t| next_number && temp.include?(next_number - t) && next_number / 2 != t }

  if nums.empty?
    puts next_number
    break
  end
end

# 104054607