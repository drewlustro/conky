str = ''
(1..8).to_a.each do |num|
  str << "${top name #{num}}${goto 270}${top pid #{num}}${goto 320}${top cpu #{num}}${goto 425}${top mem_res #{num}}\n"
end
puts str
