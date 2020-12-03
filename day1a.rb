require "benchmark"

input = open("day1.txt").read.lines.map(&:to_i).sort

# puts Benchmark.measure {
#   for i in 0..input.length
#     for j in 0..input.length
#       if input[i].to_i + input[j].to_i == 2020
#         puts input[i] * input[j]
#       end
#     end
#   end
# }

# puts Benchmark.measure {
#   elements = input.filter { |num| input.include?(2020 - num)}
#   puts elements[0] * elements[1]
# }

puts Benchmark.measure {
  for i in 0..input.length
    for j in 0..input.length
      if input[0].to_i + input[input.length - 1].to_i > 2020
        input.pop
      elsif input[0].to_i + input[input.length - 1].to_i < 2020
        input.shift
      elsif input[0].to_i + input[input.length - 1].to_i == 2020
        puts input[0].to_i * input[input.length - 1].to_i
        input.pop
      end
    end
  end
}
