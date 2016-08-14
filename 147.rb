def count_upcase(word)
  (0...word.size).select {|i|
    w = word[i]
    cord = w.ord
    cord <= 90
  }.size
end

File.open(ARGV[0]).each_line do |line|
  word = line.strip
  upcount = count_upcase(word)

  len = word.size
  uprate = upcount/len.to_f * 100.0
  downrate = 100.0 - uprate

  puts "lowercase: %.2f uppercase: %.2f"%[downrate,uprate]
end