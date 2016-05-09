str = ''
(1..8).to_a.each do |num|
 str << "${top_mem name #{num}}${goto 270}${top_mem pid #{num}}${goto 320}${top_mem cpu #{num}}${goto 425}${top_mem mem_res #{num}}\n"
end
puts str
