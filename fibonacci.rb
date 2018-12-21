# slow recurive
def rec_naive(n, b=1, a=0)
  return a if n == 0
  return b if n == 1
  return (rec_naive((n - 1), b, a) + rec_naive((n - 2), b, a))
end

# fast recurive but still can do SystemStackError when n is too big
def rec_tail(n, b=1, a=0)
  return a if n == 0
  return rec_tail(n-1, a+b, b)
end

# imperative algorythm
def imperative(n, b=1, a=0)
  return a if n == 0
  return b if n == 1
  2.upto(n) do
    old_a = a
    a = b
    b = old_a + b
  end
  b
end

n = 30

puts "rec_naive(#{n})"
start_time = Time.now
result = rec_naive(n)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"

puts "rec_tail(#{n})"
start_time = Time.now
result = rec_tail(n)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"
puts
puts

n = 35

puts "rec_naive(#{n}) can take long time..."
start_time = Time.now
result = rec_naive(n)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"

puts "rec_naive(2, 6, 4), should be 10"
start_time = Time.now
result = rec_naive(2, 6, 4)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"

puts "rec_tail(#{n})"
start_time = Time.now
result = rec_tail(n)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"

puts "rec_tail(2, 6, 4), should be 10"
start_time = Time.now
result = rec_tail(2, 6, 4)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"

puts "imperative(#{n})"
start_time = Time.now
result = imperative(n)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"

puts "imperative(2, 6, 4), should be 10"
start_time = Time.now
result = imperative(2, 6, 4)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"
puts
puts

n = 9999

puts "imperative(#{n})"
start_time = Time.now
result = imperative(n)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"

puts "rec_tail(#{n}) THIS CAN DO STACK ERROR"
start_time = Time.now
result = rec_tail(n)
total_time = Time.now - start_time
puts "result: #{result}"
puts "total time: #{total_time}"
puts
puts
