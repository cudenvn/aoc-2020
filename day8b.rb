input = open("day8.txt").read.split("\n")

swapsies = input.map.with_index { |i, x| x if i.start_with?(/(jmp)|(nop)/) }.compact

swapsies.each do |swap|
  temp = input.clone

  if temp[swap].start_with?("jmp")
    temp[swap] = temp[swap].sub("jmp", "nop")
  elsif temp[swap].start_with?("nop")
    temp[swap] = temp[swap].sub("nop", "jmp")
  end

  past_index = []
  current_index = 0
  acc = 0

  until past_index.include?(current_index)
    opp = temp[current_index].split(" ")
    past_index << current_index

    if opp[0] == "acc"
      acc += opp[1].to_i
      current_index += 1
    elsif opp[0] == "jmp"
      current_index += opp[1].to_i
    else
      current_index += 1
    end
    break if current_index >= temp.size
  end

  puts acc if past_index.last == (temp.size - 1)
end
