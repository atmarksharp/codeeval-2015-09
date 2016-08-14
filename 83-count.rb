def is_letter(c)
  c.ord >= 65 && c.ord <= 122
end

File.open(ARGV[0]).each_line do |line|
  line.chomp!

  hash = {}
  (0...line.size).each do |i|
    c = line[i].downcase
    if is_letter(c)
      if hash[c] == nil
        hash[c] = 0
      end

      hash[c] += 1
    end
  end

  p hash
end