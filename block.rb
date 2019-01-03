class Block
  def self.without_block
    puts 'without block'
  end

  def self.with_block(&_block)
    puts 'with block'
    if block_given?
      puts 'start of block'
      yield
      puts 'end of block'
    end
  end
end

puts '##### without block...'
Block.without_block
puts '##### with block, WITHOUT block given...'
Block.with_block
puts '##### with block, WITH block given...'
Block.with_block do
  puts 'a nice block'
end
puts '##### with block, WITH NIL block given...'
Block.with_block { nil }
