require_relative './enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    i = @list.length
    while i >= 0
      @list[i]
      i -= 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all_e? { |e| e < 5 })
puts(list.all_e? { |e| e > 5 })
puts(list.all_e? { |e| e == 2 })
puts(list.all_e? { |e| e == 5 })
puts(list.filter_e?(&:even?))
