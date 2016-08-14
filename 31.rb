File.open(ARGV[0]).each_line do |line|
  s,t = line.strip.split(",")
  pos = s.reverse.index t
  if pos != nil
    puts (s.size - pos - 1)
  else
    puts "-1"
  end
end