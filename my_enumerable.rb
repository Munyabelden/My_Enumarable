module MyEnumerable
  def all?
    each { |element| return false unless yield(element) } if block_given?
    true
  end

  def any?
    each { |element| return true if yield(element) } if block_given?
    false
  end

  def filter
    filter_array = []
    each { |item| filter_array << item if yield(item) } if block_given?
    filter_array
  end
end
