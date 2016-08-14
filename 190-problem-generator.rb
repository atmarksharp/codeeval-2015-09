#!/usr/bin/env ruby

def r
  rand(52)
end

(0..50).each do |i|
  puts [r,r,r,r,r].join(" ")
end