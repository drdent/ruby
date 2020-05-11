class Foo
  def self.parameter_with_default_with_default_keyword(h={}, k:42)
    puts "#{name}.#{__method__} #{h}, #{k}"
  end
end

puts "Parameter with default with default keyword..."
Foo.parameter_with_default_with_default_keyword({ k: 1}) # Warning {}, 1
Foo.parameter_with_default_with_default_keyword(k: 1) # OK {}, 1
Foo.parameter_with_default_with_default_keyword(1) # OK => 1, 42
Foo.parameter_with_default_with_default_keyword({ k: 1}, k: 2) # OK {:k => 1}, 2
