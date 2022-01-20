class MyList
  def initialize (arr)
    @list = arr
  end

  def each
    @list.map { |el| yield(el) if block_given? }
  end
end

my_list = MyList.new([1,2,3,4])