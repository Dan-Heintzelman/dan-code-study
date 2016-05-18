require_relative "../data-structures-fixed-array-challenge/fixed_array.rb"

class ArrayList

  def initialize(size)
    @dynamic_array = FixedArray.new(size)
  end

  def add(element)
    length = @dynamic_array.size
    new_array = FixedArray.new(length + 1)
    length.times do |i|
      new_array.set(i, @dynamic_array.get(0))
    end
    @dynamic_array.set(length, element)

    # @dynamic_array.array.each_with_index do |el, i|
    #   new_array.array[i] = el
    # end
  end

end
