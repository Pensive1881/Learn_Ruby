class Fixnum
  def in_words
    num = self
    answer = ""
    return "zero" if num == 0

    if num > 999999
      million = num / 1000000
      num -= million * 1000000
      answer << converter(million) << "million "
    end

    if num > 999
      thousand = num / 1000
      num -= thousand * 1000
      answer << converter(thousand) << "thousand "
    end

    answer << converter(num)
    answer = answer.chomp!(' ')
  end

  def converter(n)
    string = ""
    ones_teens = {1 => "one ", 2 => "two ", 3 => "three ", 4 => "four ",
		  5 => "five ", 6 => "six ", 7 => "seven ", 8 => "eight ", 9 => "nine ",
		  10 => "ten ", 11 => "eleven ", 12 => "twelve ", 13 => "thirteen ",
		  14 => "fourteen ", 15 => "fifteen ", 16 => "sixteen ",
		  17 => "seventeen ", 18 => "eighteen ", 19 => "nineteen "}
    tens = {20 => "twenty ", 30 => "thirty ", 40 => "forty ", 50 => "fifty ",
		  60 => "sixty ", 70 => "seventy ", 80 => "eighty ", 90 => "ninety "}

    if n > 99
      hundred = n / 100
      n -= hundred * 100
      string << ones_teens[hundred] << "hundred "
    end

    if n > 19
      x = (n/10)*10
      n -= x
      string << tens[x]
    end

    if ones_teens.include?(n) == true
      string << ones_teens[n]
    end

    string
  end
end


class Bignum
  def in_words
    num = self
    answer = ""

    if num > 999999999999
      trillion = num/10**12
      num -= trillion*10**12
      answer << trillion.in_words << " trillion "
    end

    if num > 999999999
      billion = num/10**9
      num -= billion*10**9
      answer << billion.in_words << " billion "
    end

    answer << num.in_words if num < 10**9 && num > 0
    answer = answer.chomp(' ')
  end
end

