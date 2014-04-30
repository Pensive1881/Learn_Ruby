class Array
  def sum
    if self == []
	    0
  	else
	    num = 0
	    self.each {|x| num+=x}
	    num
  	end
  end

  def square
    if self == []
	    []
	  else
	    self.map!{|x| x*x}
	  end
  end
  
  def square!
	  self.map!{|x| x*x}
  end
end
