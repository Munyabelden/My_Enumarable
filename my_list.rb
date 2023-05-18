require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |element| element < 5 })
puts(list.all? { |element| element > 5 })
puts(list.any? { |element| element == 2 })
puts(list.any? { |element| element == 5 })
filter_array = (list.filter { |element| element.even? })
puts filter_array.inspect
