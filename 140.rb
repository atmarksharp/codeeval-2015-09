File.open(ARGV[0]).each_line do |line|
  src,order = line.strip.split(';')
    .map.with_index {|s,i|
      if i==0
        s.split(' ')
      else
        s.split(' ').map(&:to_i)
      end
    }

  # p src
  # p order

  olen = order.size
  slen = src.size
  ans = Array.new(slen)

  (0...olen).each do |i|
    n = order[i]-1
    ans[n] = src[i]
    src[i] = nil
  end

  lefts = src.reject(&:nil?)
  left_id = (1..slen).reject{|i|
    order.include? i
  }[0]

  if lefts.size > 0
    ans[left_id-1] = lefts[0]
  end

  # p ans
  puts ans.join(' ')
end