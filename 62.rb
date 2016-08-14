DEBUG=false

def mod(a,b) # m % n
  m = a
  n = b

  while m >= n
    m -= n
  end

  return m
end

File.open(ARGV[0]).each_line do |line|
  m,n = line.strip.split(",").map{|s| s.to_i}
  puts("#{mod(m,n)} | #{m % n}") if DEBUG
  puts(mod(m,n)) if !DEBUG
end