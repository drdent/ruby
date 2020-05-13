# This file shows trickyniss of understanding what will change in ruby 3 regarding handling keywords and positioning arguments.

class Foo
  def self.keyword_with_keywords_with_splat(a:, b:, **kw)
    puts "#{name}.#{__method__} #{a}, #{b}, #{kw}"
    two_parameter(1, **kw) # Warning
  end

  def self.keyword_with_keywords_without_splat(a:, b:, **kw)
    puts "#{name}.#{__method__} #{a}, #{b}, #{kw}"
    two_parameter(1, kw) # OK
  end

  def self.two_parameter(p, q)
    puts "#{name}.#{__method__} #{p}, #{q}"
  end
end

puts "Delegation..."
Foo.keyword_with_keywords_with_splat(a: {}, b: '') # Warning
Foo.keyword_with_keywords_without_splat(a: {}, b: '') # OK
Foo.keyword_with_keywords_with_splat(a: {}, b: '', key: 'value') # OK
Foo.keyword_with_keywords_without_splat(a: {}, b: '', key: 'value') # OK
