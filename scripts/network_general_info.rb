output = ''
output << "${color0}Gateway IP: $color$gw_ip\n"
output << "${color0}DNS: $color$nameserver ${nameserver 1}\n"
# output << "${color0}Wi-fi Network: $color${wireless_essid wlp3s0}\n"
output << "${color0}Ethernet IP: $color${addr eno1}\n"
# output << "${color0}Signal: $color${wireless_link_qual_perc wlp3s0}${goto 95}% ${goto 112}${if_up eno1}${wireless_link_bar wlp3s0}${else}${color0}No wlan0$endif\n"
puts output
