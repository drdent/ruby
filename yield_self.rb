require 'csv'

class Foo
  def initialize(something)
    @something = something
  end

  def double
    @something * 2
  end
end


puts 'call one method, store result in var'
puts 'a = Foo.new(2)'
a = Foo.new(2)
puts 'b = a.double'
b = a.double
puts 'c = b.to_f'
c = b.to_f
puts "Result: #{c}"

puts "\n-------------------------\n\n"

puts 'call chaining methods'
puts 'c = Foo.new(2).double.to_f'
c = Foo.new(2).double.to_f
puts "Result: #{c}"

puts "\n-------------------------\n\n"

puts 'yield_self with block'
puts 'c = id'
puts '.yield_self { |foo| foo.double}'
puts '.yield_self { |doubled| doubled.to_f}'
c = Foo.new(2)
      .yield_self { |foo| foo.double}
      .yield_self { |doubled| doubled.to_f}
puts "Result: #{c}"

puts "\n-------------------------\n\n"

puts 'yield_self with method'
puts 'Foo.new(2)'
puts '.yield_self(&:double)'
puts '.yield_self(&:to_f)'
c = Foo.new(2)
      .yield_self(&:double)
      .yield_self(&:to_f)
puts "Result: #{c}"

puts "\n-------------------------\n\n"

puts "what is more readable?"
path      = File.expand_path("data.csv")
file      = File.read(path)
csv = CSV.parse(file)
csv
  .map { |row| row[1].to_i }
  .sum

CSV.parse(File.read(File.expand_path("data.csv")))
  .map { |row| row[1].to_i }
  .sum

"data.csv"
  .yield_self { |name| File.expand_path(name) }
  .yield_self { |path| File.read(path) }
  .yield_self { |body| CSV.parse(body) }
  .map        { |row|  row[1].to_i }
  .sum