# Prints Ruby constants names and values

[:ARGF,
 :ARGV,
 :CROSS_COMPILING,
 :ENV,
 :RUBYGEMS_ACTIVATION_MONITOR,
 :RUBY_COPYRIGHT,
 :RUBY_DESCRIPTION,
 :RUBY_ENGINE,
 :RUBY_ENGINE_VERSION,
 :RUBY_PATCHLEVEL,
 :RUBY_PLATFORM,
 :RUBY_RELEASE_DATE,
 :RUBY_REVISION,
 :RUBY_VERSION,
 :STDERR,
 :STDIN,
 :STDOUT,
 :TOPLEVEL_BINDING
].each do |c|
  puts "#{c}"
  puts (eval c.to_s)
  puts
end
puts "ARGF.file"
puts ARGF.file

