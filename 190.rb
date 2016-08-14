# DEBUG = true
DEBUG = false

@ops = {
  :+ => Proc.new {|a,b| a+b}, # plus
  :- => Proc.new {|a,b| a-b}, # minus
  :* => Proc.new {|a,b| a*b}, # times
  :/ => Proc.new {|a,b|  # div
    if b == 0
      Float::INFINITY
    else
      a/b.to_f
    end
  }
}

P,M,T,D = [:+,:-,:*,:/]
@patterns = [
  [P, M, T, D],
  [P, M, D, T],
  [P, T, M, D],
  [P, T, D, M],
  [P, D, M, T],
  [P, D, T, M],
  [M, P, T, D],
  [M, P, D, T],
  [M, T, P, D],
  [M, T, D, P],
  [M, D, P, T],
  [M, D, T, P],
  [T, P, M, D],
  [T, P, D, M],
  [T, M, P, D],
  [T, M, D, P],
  [T, D, P, M],
  [T, D, M, P],
  [D, P, M, T],
  [D, P, T, M],
  [D, M, P, T],
  [D, M, T, P],
  [D, T, P, M],
  [D, T, M, P]
]

def op(id)
  @ops[id]
end

@expr = nil
@ans = nil

def apply_pt(pt,ns)
  a = op(pt[0])[ ns[0], ns[1] ]
  b = op(pt[1])[ a, ns[2] ]
  c = op(pt[2])[ b, ns[3] ]
  d = op(pt[3])[ c, ns[4] ]

  if DEBUG
    @expr = "((((#{ns[0]}#{pt[0]}#{ns[1]})#{pt[1]}#{ns[2]})#{pt[2]}#{ns[3]})#{pt[3]}#{ns[4]}) = #{d}"
    @ans = d
  end

  return d
end

def check_patterns(nums)
  flag = false

  (0..23).each do |i|
    pt = @patterns[i]
    ans = apply_pt(pt,nums)
    if ans == 42.0
      flag = true
      break
    end
  end

  return flag
end

File.open(ARGV[0]).each_line do |line|
  nums = line.chomp.split(' ').map(&:to_i)
  if check_patterns(nums)
    if DEBUG
      puts "YES: #{@expr}"
    else
      puts "YES"
    end
  else
    if DEBUG
      puts "NO: #{@expr}"
    else
      puts "NO"
    end
  end
end