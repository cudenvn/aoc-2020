input = open("day8.txt").read.split("\n")

past_index = []
current_index = 0
acc = 0

until past_index.include?(current_index)
  opp = input[current_index].split(" ")
  past_index << current_index

  if opp[0] == "acc"
    acc += opp[1].to_i
    current_index += 1
  elsif opp[0] == "jmp"
    current_index += opp[1].to_i
  else
    current_index += 1
  end
end

p acc
