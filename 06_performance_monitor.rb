require 'time'

def measure(times = 0)
  if times == 0
    start_time = Time.now
    yield
    end_time = Time.now
    total_time = end_time - start_time
  else
    time = 0
    i=0
    while i < times
      start_time = Time.now
      end_time = yield
      total_time = start_time - end_time
      time += total_time.to_i
      i+=1
    end
    time.abs/times.round(1)
  end
end
