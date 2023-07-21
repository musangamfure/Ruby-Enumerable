require_relative 'modules/enumerable'

class MyList
  include MyEnumerable

  def initialize(*items)
    @list = items
  end

  def each(&block)
    @list.each(&block)
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4, 1)
# => <MyList: @list=[1, 2, 3, 4]>

# Test #all?
puts(list.all? { |e| e < 5 })
# => true
puts(list.all? { |e| e > 5 })
# => false

# Test #any?
puts(list.any? { |e| e == 2 })
# => true
puts(list.any? { |e| e == 5 })
# => false
# Test #filter
puts(list.filter(&:even?))
# => [2, 4]
