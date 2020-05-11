class Foo
  def self.parameter_with_default(p={})
    puts "#{name}.#{__method__} #{p}"
  end
end

puts "Parameter with default..."
Foo.parameter_with_default(1) # OK => 1
Foo.parameter_with_default(k:1) # OK {:k=>1}
Foo.parameter_with_default({k:1}) # OK {:k=>1}
