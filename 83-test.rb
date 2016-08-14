def is_letter(c)
  c.ord >= 65 && c.ord <= 122
end

def beauty(c)
  if is_letter(c)
    26 - (c.upcase.ord - 64)
  else
    0
  end
end

@tests = [
  Proc.new {|a,b,c| a*1 + b*2 + c*3},
  Proc.new {|a,b,c,d,e,f,g,h,i,k,l,n,o,p,q,s,u,t,y|
    g*1 + o*4 + d*1 + l*1 + u*2 + c*4 + k*3 + i*2 + n*1 + t*2 + h*3 + e*4 + f*1 + a*3 + b*1 + r*2 + p*1 + s*1 + y*1
  },
  Proc.new {|a,c,e,g,i,l,n,o,p,r,s,t,u|
    i*2 + g*1 + n*3 + o*2 + r*1 + e*3 + p*2 + u*2 + c*1 + t*2 + a*2 + l*1 + s*1
  },
  Proc.new {|s,o,m,e,t,i,c,a,r,h,d,k,u,p|
    s*5 + o*2 + m*3 + e*6 + t*4 + i*1 + c*1 + a*4 + r*2 + h*1 + d*1 + k*1 + u*1 + p*1
  },
  Proc.new {|s,o,i,j,u,t,g,c,n,l,p,r,f,e,d,a,v|
    s*6 + o*5 + i*1 + j*1 + u*2 + t*2 + g*1 + c*1 + n*1 + l*2 + p*1 + r*2 + f*1 + e*2 + d*1 + a*1 + v*1
  }
]

@test_args = [3,19,13,14,17]

