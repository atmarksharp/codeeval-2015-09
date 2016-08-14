File.open(ARGV[0]).each_line do |line|
  puts line.chomp.split(' ').map {|w|
    w[w.size-1] + w[1..-2] + w[0]
  }.join(' ')
end