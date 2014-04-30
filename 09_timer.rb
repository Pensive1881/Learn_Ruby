require 'time'

class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end

  def time_string
    min = @seconds / 60
    @seconds %= 60
    hours = min / 60
    min %= 60
    time_string = "%02d:%02d:%02d" % [hours, min, @seconds]
  end
end
