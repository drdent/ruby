# This file shows trickyniss of understanding what will change in ruby 3 regarding handling keywords and positioning arguments.

class Foo
  def self.keyword(k:)
    puts "#{name}.#{__method__} #{k}"
  end
end

puts "Keyword..."
Foo.keyword({k: 1}) # Warning => 1
Foo.keyword(k: 1) # OK => 1
Foo.keyword(**{k: 1}) # OK
