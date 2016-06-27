def fib_rec(x)
  if x<=2
    return 1
  else
    return fib_rec(x-1) + fib_rec(x-2)
  end
end

puts fib_rec(11)
