input = open("day7.txt").read.split("\n").map { |s| s.gsub(/(bag(s*))/, "").split(/(?:contain)|[,.]/).map(&:strip) }

searching = ["shiny gold"]

for i in searching
  for j in input
    if j.any? { |s| s.include?(i) }
      searching << j[0] unless (j[0] == i || searching.any?(j[0]))
    end
  end
end

searching.shift
p searching.count