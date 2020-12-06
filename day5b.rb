# Summation formula n*(n+1)/2
input = open("day5.txt").read.split(/\s+/)

seats = []
input.each do |pass|
  # Get the row number
  rows = [*0..127]
  pass[0, 7].split("").each do |p|
    rows = p == "F" ? rows.each_slice(rows.size / 2).to_a[0] : rows.each_slice(rows.size / 2).to_a[1]
  end

  # Get the column number
  columns = [*0..7]
  pass.chars.last(3).each do |p|
    columns = p == "L" ? columns.each_slice(columns.size / 2).to_a[0] : columns.each_slice(columns.size / 2).to_a[1]
  end

  seatId = rows.first.to_i * 8 + columns.first.to_i
  seats << seatId
end

puts [*seats.min..seats.max].reduce(:+) - seats.reduce(:+)