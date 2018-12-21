t1 = Time.now

SEED = 1234
NO_OF_ARRAYS = 600
ARRAY_SIZE = 6000

rng = Random.new(SEED)
arrays = []

NO_OF_ARRAYS.times do |i|
  array = []
  ARRAY_SIZE.times do
    array << rng.rand
  end
  arrays << array
  # puts "#{i}/#{NO_OF_ARRAYS}" if i % 100 == 0
end

arrays.map &:sort
arrays.map { |a| a.shuffle(random: rng) }
arrays.map &:sort

total_time = Time.now - t1
# arrays.each { |a| p a }
puts "total time: #{total_time}"
