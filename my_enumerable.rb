module MyEnumerable
  def all?
    each do |el|
      return false unless yield(el)
    end
    true  
  end

  def any?
    each do |el|
      return true if yield(el)
    end
    false
  end
end