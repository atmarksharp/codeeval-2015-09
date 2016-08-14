File.open(ARGV[0]).each_line do |line|
  line.chomp!

  src = line.gsub(/[^a-zA-Z]/,'')

  # count
  hash = {}
  (0...src.size).each do |i|
    c = src[i].downcase

    if hash[c] == nil
      hash[c] = 0
    end

    hash[c] += 1
  end

  counts = hash.sort{|(k1,v1),(k2,v2)| v2<=>v1}

  # assign
  n = 26
  ans = 0
  (0...counts.size).each do |i|
    ans += n * counts[i][1]
    n -= 1
  end

  puts ans
end