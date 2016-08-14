def max(a,b)
  if a > b
    a
  else
    b
  end
end

def maxArr(la,lb)
  (0...la.size).map do |i|
    max(la[i], lb[i])
  end
end

File.open(ARGV[0]).each_line do |line|
  rows = line.strip.split(' | ').map{|l|
    l.split(" ").map{|n| n.to_i}
  }
  
  ans = rows.inject {|la,lb| maxArr(la,lb)}
  puts ans.join(" ")
end