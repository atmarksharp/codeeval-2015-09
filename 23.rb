def right(_s, width)
  s = _s.to_s
  spaces = " " * (width - s.size)
  return spaces + s
end

w = 12
h = 12

width = (w*h).to_s.size + 1

(1..h).each do |y|
  puts (1..w).map {|x| right(x*y, width)}.join("")
end