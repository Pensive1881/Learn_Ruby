class Temperature
  def initialize(options = {})
    @c = options[:c]
    @f = options[:f]
    if options.include?(:f)
      @c = ((@f - 32) * 5) / 9
    elsif options.include?(:c)
      @f = ((@c * 9.0) / 5.0) + 32.0
    end
  end
  
  def in_celsius
    @c
  end
  
  def in_fahrenheit
    @f
  end
  
  # factory methods
  
  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end
  
  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end
end


class Celsius < Temperature
  def initialize(temp)
    super(:c => temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end
end
