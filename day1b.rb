require "benchmark"

input = open("day1.txt").read.lines.map(&:to_i).sort

puts Benchmark.measure {
  for i in 0..input.length
    for j in 0..input.length
      for k in 0..input.length
        if input[i].to_i + input[j].to_i + input[k].to_i == 2020
          puts input[i] * input[j] * input[k]
        end
      end
    end
  end
}
