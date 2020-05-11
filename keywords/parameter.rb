# This file shows trickyniss of understanding what will change in ruby 3 regarding handling keywords and positioning arguments.

class Foo
  def self.parameter(p)
    puts "#{name}.#{__method__} #{p}"
  end
end

puts "Parameter..."
Foo.parameter(**{}) # Warning => {}
Foo.parameter(1) # OK => p
Foo.parameter({}) # OK => {}
