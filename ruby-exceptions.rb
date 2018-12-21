# enter number as a script argument

def check(age)
  raise ArgumentError, "Enter positive number, you moron." unless age > 0
  raise StandardError, "Too much, you moron." unless age < 100
end

begin
  check ARGV.pop.to_i
rescue ArgumentError => e
  puts "message 1"
  puts e.message
rescue StandardError => e
  puts "message 2"
  puts e.message
  puts e.class
end
