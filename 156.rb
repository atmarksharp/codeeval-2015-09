def is_letter(c)
  c.ord >= 65 && c.ord <= 122
end

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  len = line.size

  flag = true
  out = (0...len).map {|i|
    c = line[i]
    ret = nil
    if is_letter(c)
      if flag
        ret = c.upcase
      else
        ret = c.downcase
      end

      flag = !flag
    else
      ret = c
    end

    ret
  }.join('')

  puts out
end