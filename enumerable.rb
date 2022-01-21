module MyEnumerable
  def all_e?
    @list.each { |item| return false unless yield(item) }
    true
  end

  def any_e?
    @list.each { |item| return true if yield(item) }
    false
  end

  def filter_e?
    result = []
    @list.each { |item| result << item if yield item }
    result
  end
end
