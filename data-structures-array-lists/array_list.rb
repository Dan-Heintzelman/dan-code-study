require_relative "../data-structures-fixed-array-challenge/fixed_array.rb"

class ArrayList
  attr_accessor :dynamic_array

  def initialize(size)
    @dynamic_array = FixedArray.new(size)
    @capacity = 0
    @index_count = size - 1
  end

  def add(element)
    current_length = @dynamic_array.size
    if @index_count >= @capacity
      @capacity = current_length * 2
      @new_array = FixedArray.new(@capacity)
      expand_array
      @new_array.set(@index_count, element)
      @index_count += 1
      @dynamic_array = @new_array
    else
      @dynamic_array.set(@index_count, element)
      @index_count += 1
    end
  end

    def expand_array
      @index_count.times do |i|
        @new_array.set(i, @dynamic_array.get(i))
      end
    end

end

# before adding element to array, check to make sure if current size
#
# before doubling size of dynamic_array, check to see if its current size is greater than its size after ading 1
#
# when I double the array, take the previous length of the array, and keep adding elements to array until I hit that number and then double again
