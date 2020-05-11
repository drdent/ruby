# This file shows trickyniss of understanding what will change in ruby 3 regarding handling keywords and positioning arguments.

class Foo
  def self.parameter_with_keyword(p, k:)
    puts "#{name}.#{__method__} #{p}, #{k}"
  end
end

puts "Parameter with keyword..."
Foo.parameter_with_keyword(1, k:2) # OK => 1, 2
Foo.parameter_with_keyword({k:1}, k:2) # OK => {k: 1}, 2
