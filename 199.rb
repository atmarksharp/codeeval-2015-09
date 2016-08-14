File.open(ARGV[0]).each_line do |line|
  str,bits = line.strip.split ' '
  out = (0...str.size).map {|i|
    if bits[i] == "1"
      str[i].upcase
    else
      str[i].downcase
    end
  }.join('')

  puts out
end