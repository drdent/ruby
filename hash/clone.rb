require "benchmark/ips"

hsh = 100.times.each_with_object({}) { |i,h| h[i.to_s] = { i.to_s => i.to_s} }

puts hsh
puts Hash[hsh] == hsh.dup
puts Hash[hsh] == hsh.clone
puts hsh.dup == hsh.clone

Benchmark.ips do |x|
  x.report('[]') { Hash[hsh] }
  x.report('dup') { hsh.dup }
  x.report('clone') { hsh.clone }
  x.compare!
end
