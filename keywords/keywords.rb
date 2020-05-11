# This file shows trickyniss of understanding what will change in ruby 3 regarding handling keywords and positioning arguments.

class Foo
  def self.keywords(**kw)
    puts "#{name}.#{__method__} #{kw}"
  end
end

puts "Keywords..."
Foo.keywords({}) # Warning => {}
Foo.keywords(**{}) # OK
Foo.keywords(k: 1) # OK {:k=>1}
