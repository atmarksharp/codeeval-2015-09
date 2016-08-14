def maxlen(a,b)
  lenA = a.size
  lenB = b.size

  if lenA > lenB
    a
  elsif lenA == lenB
    nil
  else
    b
  end
end

File.open(ARGV[0]).each_line do |line|
  input = line.strip.split ' '

  is_same = true
  max = input.inject{|a,b|
    ret = maxlen(a,b)
    if ret == nil
      ret = a
      is_same = is_same && true
    else
      is_same = false
    end
    ret
  }

  # p max

  out = (0...max.size).map {|i|
    ("*"*i) + max[i]
  }.join(" ")

  puts out
end