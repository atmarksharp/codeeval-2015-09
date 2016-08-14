def count(src,target)
  len = src.size
  found = 0
  
  (0...len).each do |i|
    # p src[i..i+4]
    if src[i..i+4] == target
      # puts "found"
      found += 1
    end
  end

  return found
end

File.open(ARGV[0]).each_line do |line|
  line.strip!
  n = count(line, "<--<<") + count(line, ">>-->")
  puts n
end