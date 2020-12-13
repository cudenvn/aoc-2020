input = open("day9.txt").read.split("\n").map(&:to_i)

invalid = 0
input.each_with_index do |num, i|
  temp = input[i, 25]
  next_number = input[i + 25]

  nums = temp.select { |t| next_number && temp.include?(next_number - t) && next_number / 2 != t }

  if nums.empty?
    invalid = next_number
    break
  end
end

found = false
size = 2 
index = 0

until found
  temp = input[index, size]
  sum = temp.reduce(:+)
 
  if size <= input.size - index
    size += 1
  elsif size > input.size - index
    size = 2
    index += 1
  end

  if sum == invalid
    puts temp.min + temp.max
    found = true
  end
end