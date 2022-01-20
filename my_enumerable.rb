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

  def filter
    filtered_array = []
    each do |el|
      filtered_array.push(el) if yield(el)
    end
    filtered_array
  end
end
