def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string,x=2)
  answer = String.new
  x.times {answer << string << ' '}
  answer.chomp(' ')
end

def start_of_word(string,x)
  string[0..(x-1)]
end

def first_word(string)
  array = string.split(' ')
  array.first
end

def titleize(string)
  array = string.split(' ')
  array.each {|x| x.capitalize! unless (x=='the'||x=='over'||x=='and')}
  array.first.capitalize!
  array.join(' ')
end
