def check_rest(src,index=0)
  ret = :empty
  target = src[index]
  (0...src.size).each do |j|
    if j != index && src[j] == target
      ret = false
    end
  end
  if ret == :empty
    ret = true
  end
  ret
end

def is_letter(c)
  c.ord >= 65 && c.ord <= 122
end

def find(w)
  found = nil
  (0...w.size).each do |i|
    c = w[i]
    if is_letter(c) && check_rest(w,i)
      found = c
      break
    end
  end
  return found
end

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  puts find(line)
end