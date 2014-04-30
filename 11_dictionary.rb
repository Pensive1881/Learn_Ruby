class Dictionary
  attr_accessor :entry

  def initialize
    @entry = {}
  end
  
  def entries(options = {})
    options = @entry
  end
  
  def add(hash)
    if hash.is_a?(String)
	  @entry = {hash => nil}
	else
      @entry.merge!(hash)
	end
  end
  
  def keywords
    @entry.keys.sort
  end
  
  def include?(thing)
    @entry.keys.include?(thing)
  end
  
  def find(thing)
    if @entry.keys.size > 1
	  new_entry = @entry.keys.to_a
	  i = 0
	  while i < new_entry.length
		new_entry[i]
		if new_entry[i].index(thing) == nil
		  new_entry[i]
		  @entry.delete(new_entry[i])
		end
		i+=1
	  end
	elsif @entry.keys.include?(thing) == false
	  @entry = {}
	elsif @entry.keys.size == 1
	  x={}
	  x.store(thing,@entry[thing])
	  @entry.merge!(x)
	end
	@entry
  end
  
  def printable
    @entry.to_a.reverse.map{|x,y| "[#{x}] \"#{y}\""}.join("\n")
  end
end
