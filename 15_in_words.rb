class Fixnum
  def in_words
    number = String.new
	x = self

	if self >= 10**6 && self < 10**9
	  y = x/10**6
	  x = x-(y*10**6)
	  if y > 99
	    number << compiler(y/100) << "hundred "
		y = y-(y/100)*100
	  end
	  number << compiler(y) << "million "
	end

	if x >= 1000 && x < 10*10**6
	  y = x/1000
	  if y > 99
	    number << compiler(y/100) << "hundred "
		y = y-(y/100)*100
	  end
	  number << compiler(y) << "thousand " << compiler((x-(x/1000)*1000)/100)
	  if (x-(x/1000)*1000) > 100
	    number << compiler(x-(x/1000)*1000)
	  end
	  number << compiler(x-(x/100)*100)
	end

	if x >= 100 && x < 1000
	  number << compiler(x/100) << "hundred " << compiler(x-(x/100)*100)
	end

	if x >= 20 && x < 100
	  number << compiler(x)
	end

    if self == 0
	  return "zero"
	elsif x < 20
	  number << compiler(x)
	end

  number.chomp(' ')
  end

  def compiler(info)
    answer = String.new
    x = info

	if x >= 100 && x < 1000
	  answer << "hundred "
	end

	if x >= 20 && x < 30
	  answer << "twenty "
	  x -= 20
	elsif x >= 30 && x < 40
	  answer << "thirty "
	  x -= 30
	elsif x >= 40 && x < 50
	  answer << "forty "
	  x -= 40
	elsif x >= 50 && x < 60
	  answer << "fifty "
	  x -= 50
	elsif x >= 60 && x < 70
	  answer << "sixty "
	  x -= 60
	elsif x >= 70 && x < 80
	  answer << "seventy "
	  x -= 70
	elsif x >= 80 && x < 90
	  answer << "eighty "
	  x -= 80
	elsif x >= 90 && x < 100
	  answer << "ninety "
	  x -= 90
	end

	if info == 0
	  return ""
	elsif x == 1
	  answer << "one "
	elsif x == 2
	  answer << "two "
	elsif x == 3
	  answer << "three "
	elsif x == 4
	  answer << "four "
	elsif x == 5
	  answer << "five "
	elsif x == 6
	  answer << "six "
	elsif x == 7
	  answer << "seven "
	elsif x == 8
	  answer << "eight "
	elsif x == 9
	  answer << "nine "
	elsif x == 10
	  answer << "ten "
	elsif x == 11
	  answer << "eleven "
	elsif x == 12
	  answer << "twelve "
	elsif x == 13
	  answer << "thirteen "
	elsif x == 14
	  answer << "fourteen "
	elsif x == 15
	  answer << "fifteen "
	elsif x == 16
	  answer << "sixteen "
	elsif x == 17
	  answer << "seventeen "
	elsif x == 18
	  answer << "eighteen "
	elsif x == 19
	  answer << "nineteen "
	end
	answer
  end
end

class Bignum
  def in_words
    x = self
	number = String.new

    if x >= 10**12 && x < 10**15
	  y = x/10**12
	  x = x-(y*10**12)
	  number << y.in_words << " trillion "
	  if x != 0
	    number << x.in_words
		x = 0
	  end
	end

	if x >= 10**9 && x < 10**12
	  y = x/10**9
	  x = x-(y*10**9)
	  number << y.in_words << " billion " << x.in_words
	end
	number.chomp(' ')         
  end
end
