require 'yaml'

class YearFounder
  INPUT_FILE = './config/input.yml'

  def initialize
    @years = ::YAML.load(File.read(INPUT_FILE))
  end

  def to_s
    @years.join(' ')
  end

  def solution1
    @years.each do |year1|
      @years.each do |year2|
        return year1 * year2 if year1 + year2 == 2020
      end
    end
  end

  def solution2
    @years.each do |year1|
      @years.each do |year2|
        @years.each do |year3|
          return year1 * year2 * year3 if year1 + year2 + year3 == 2020
        end
      end
    end
  end
end
