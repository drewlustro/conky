string = ''
cpu_freqs = `cat /proc/cpuinfo | grep MHz | awk '{print $4}'`.split("\n").map { |freq| freq.to_f.round }
cpu_freqs.each_with_index do |freq, index|
  core_index = index
  string << "${color0}Core #{core_index}: $color #{freq}MHz ${color0} ${goto 280}Load: $color${cpu cpu#{core_index}}% $color0${goto 460}Temp: $color${exec sensors -f | grep 'Core #{index}' | cut -c18-19}°F\n"
  string << "${cpugraph cpu#{core_index} 12,600 303030 467f77}\n"
end

puts string
