input = open("day8.txt").read.split("\n")

past_index = []
current_index = 0
acc = 0

loop do
  opp = input[current_index].split(" ")
  past_index << current_index

  if opp[0] == "acc"
    acc += opp[1].to_i
    current_index = (current_index + 1) % input.size
  elsif opp[0] == "jmp"
    current_index = (current_index + opp[1].to_i) % input.size
  else
    current_index = (current_index + 1) % input.size
  end

  break if past_index.include?(current_index)
end

p acc