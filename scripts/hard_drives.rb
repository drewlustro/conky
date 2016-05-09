require 'yaml'
secrets = YAML.load_file(ENV['HOME']+'/.conky/secrets.yml')
#active_device = secrets['hard_drives']['activity_for']
# dev_titles = "dev${goto 100}write${goto 200}read"
# puts dev_titles
secrets['hard_drives'].each do |active_device_name, device|
  diskio = "${color}#{active_device_name}${goto 100}${diskio_write #{active_device_name}}${goto 200}${diskio_read #{active_device_name}}${goto 300}${diskiograph #{active_device_name} 12,180 467f77 303030 -t -l}\n"

  puts diskio
end

free_used_title = "\n$color0${voffset 5}${goto 100}Free${goto 200}Used${goto 300}Size${goto 400}Used\n"
puts free_used_title

secrets['hard_drives'].each do |active_device_name, device|

  partitions = []
  device['partitions'].each do |partition_name, partition|
    conky_partition = "${color0}#{partition_name}$color${goto 100}${fs_free #{partition}}${goto 200}${fs_used #{partition}}${goto 300}${fs_size #{partition}}${goto 400}${fs_bar 12,90 #{partition}}${goto 500}$color0${fs_used_perc #{partition}}%"
    partitions << conky_partition + "\n"
  end

  puts '${font Input Mono:medium:size=9}' + partitions.inject(:+)
  puts "\n"
end
