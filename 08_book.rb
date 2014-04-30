class Book
  def title=(stuff)
    stuff = stuff.split(' ')
    stuff.map! do |x|
      if ['and','a','an','the','of','in'].include?(x)
        x
      elsif x=='i'
        x.capitalize
      else
        x.capitalize
      end
    end
    stuff[0].capitalize!
    @book = stuff.join(' ')
  end
  
  def title
    @book
  end
end
