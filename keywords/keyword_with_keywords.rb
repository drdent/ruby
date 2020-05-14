# This file shows trickyniss of understanding what will change in ruby 3 regarding handling keywords and positioning arguments.

class Foo
  def self.keyword_with_keywords(k:, **kw)
    puts "#{name}.#{__method__} #{k}, #{kw}"
  end
end

puts "Keyword..."
Foo.keyword_with_keywords({ k: 1 }) # Warning => 1
Foo.keyword_with_keywords(k: 1) # OK => 1, {}
Foo.keyword_with_keywords(k: 1, x: 2) # OK => 1, {:x=>2}
Foo.keyword_with_keywords(**{ k: 1 }) # OK 1, {}
Foo.keyword_with_keywords(**{ k: 1, x: 2 }) # OK 1, {:x=>2}
