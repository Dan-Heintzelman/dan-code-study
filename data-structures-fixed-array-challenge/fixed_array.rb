class FixedArray
  attr_accessor :array

  def initialize(size)
    @size = size
    @array = Array.new(size)
  end

  # def length
  #   @array.length
  # end

  def get(index)
    raise ("Index out of bounds") unless index < @size && index >= 0
    @array[index]
  end

  def set(index, element)
    raise ("Index out of bounds") unless index < @size && index >= 0
    @array[index] = element
  end

  def check_index(index)

  end
end

# Interface
# FixedArray.new(size) creates a new array @size elements

# FixedArray.get(index) Get a value from the array at the specified index.

blarb = FixedArray.new(10)
# blarb(4) returns the element at this index
# blarb(5, "thing"), should insert "thing" at position 5

# Interface
# FixedArray.new(size) creates a new array @size elements

# FixedArray.get(index) Get a value from the array at the specified index.

blarb = FixedArray.new(10)
# blarb(4) returns the element at this index
# blarb(5, "thing"), should insert "thing" at position 5
