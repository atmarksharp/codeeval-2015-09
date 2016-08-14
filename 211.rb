def check_word(str, target)
  word = str
  ct = target
  flag = false

  i = 0
  while true do
    if i >= word.size
      flag = false
      break
    end

    k = word[i..-1].include?(ct[0])
    if k != nil
      i = k+1
      ct = ct[1..-1]
    else
      i += 1
    end

    if ct.size == 0
      flag = true
      break
    end
  end

  return flag
end

# def check_word(word, target)
#   if @cwd == nil || @cwd[:target] != target
#     @cwd = 
#       {:reg => /#{target.split('').join(".*")}/,
#       :target => target}
#   end

#   reg = @cwd[:reg]
#   (word =~ reg) != nil
# end

def find(words,target)
  found = words.select {|w|
    check_word(w,target)
  }
  if found.size == 0
    return 'False'
  else
    return found.join(' ')
  end
end

File.open(ARGV[0]).each_line do |line|
  src,target = line.chomp.split(' | ')
  words = src.split(' ')
  
  puts find(words,target)
end