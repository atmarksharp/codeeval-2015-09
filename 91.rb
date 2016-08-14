def f2s(f)
  "%.3f"%[f]
end

def mysort(list,sorted=[])
  if list.size == 0
    return sorted
  else
    smallest = list.min
    newlist = list.reject{|n| n == smallest}
    sorted.push smallest
    return mysort(newlist, sorted)
  end
end

File.open(ARGV[0]).each_line do |line|
  nums = line.strip.split(' ').map(&:to_f)
  ans = mysort(nums)
  puts ans.map{|f| f2s(f)}.join(' ')
end