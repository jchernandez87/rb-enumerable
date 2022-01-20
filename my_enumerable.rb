module MyEnumerable
  def all?
    each do |el|
      return false unless yield(el)
    end
    true  
  end
end