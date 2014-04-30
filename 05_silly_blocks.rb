def reverser
  string = yield
  string = string.split(' ')
  string.each {|x| x.reverse!}
  string.join(' ')
end

def adder(default = 1)
  num = yield + default
end

def repeater(default = 1)
  default.times {yield}
end
