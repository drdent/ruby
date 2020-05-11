# This file shows trickyniss of understanding what will change in ruby 3 regarding handling keywords and positioning arguments.

class Foo
  def self.parameter_with_keywords(p, **k)
    puts "#{name}.#{__method__} #{p}, #{k}"
  end
end

puts "Parameter with keywords..."
Foo.parameter_with_keyword_default(k:1) # Warning {:k=>1}, 42
Foo.parameter_with_keyword_default(1) # OK => 1, 42
Foo.parameter_with_keyword_default({k:1}) # OK {:k=>1}, 42
