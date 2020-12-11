$input = open("day7.txt").read.split("\n").map { |s| s.gsub(/(bag(s*))/, "").split(/(?:contain)|[,.]/).map(&:strip) }

def method_name(arr)
  return 0 if arr.uniq.size == 1 && arr.uniq.first == "no other"

  count = 0
  spread = []
  arr.each do |a|
    next if a == "no other"
    bags = $input.find { |i| i.first == a }.slice(1..)
    bags.each do |b|
      if b == "no other"
        spread << b
        next
      end

      c = b.split(" ", 2)
      count += c[0].to_i
      c[0].to_i.times do
        spread << c[1]
      end
    end
  end

  return count + method_name(spread)
end

puts method_name(["shiny gold"])